import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

import 'package:amigosdoCartola/models/time.dart';

part 'time_state.dart';

class TimeCubit extends Cubit<TimeState> {
  TimeCubit() : super(TimeInitial());

  var url = 'https://api.cartolafc.globo.com/time/id/26050244';
  Future<void> getTime() async {
    try {
      emit(TimeLoading());
      var response = await http.get(url);
      var jsonResponse = convert.jsonDecode(response.body);
      final _time = Time.fromJson(jsonResponse['time'] as Map);
      emit(TimeLoaded(_time));
    } on Exception {
      emit(TimeError('erro ao carregar json'));
    }
  }
}

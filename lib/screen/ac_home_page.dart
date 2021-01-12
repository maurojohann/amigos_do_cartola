import 'package:amigosdoCartola/cubit/time_cubit.dart';
import 'package:amigosdoCartola/models/time.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class ACHomePage extends StatelessWidget {
  // var url = 'https://api.cartolafc.globo.com/time/id/26050244';
  // Time time;

  // Future<Time> getTime() async {
  //   var response = await http.get(url);
  //   if (response.statusCode == 200) {
  //     var jsonResponse = convert.jsonDecode(response.body);
  //     time = Time.fromJson(jsonResponse['time'] as Map);
  //     //  print(time.nomeCartola);
  //     return time;
  //   } else {
  //     throw Exception('erro ao carregar json');
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Amigos do Cartola'),
      ),
      body: Container(
        child: BlocBuilder<TimeCubit, TimeState>(builder: (context, state) {
          if (state is TimeLoading) {
            return buildLoadind();
          } else if (state is TimeLoaded) {
            return buildTimeLoaded(state.time);
          } else {
            return buildInitialInput(context);
          }
        }),
      ),
    );
  }

  Widget buildInitialInput(BuildContext context) {
    final timeCubit = context.watch<TimeCubit>();
    timeCubit.getTime();
    return Center(
      child: Text('Tela Inicial'),
    );
  }

  Widget buildLoadind() {
    return CircularProgressIndicator();
  }

  Widget buildTimeLoaded(Time state) {
    return Center(child: Text('${state.nomeCartola}'));
  }
}

import 'package:amigosdoCartola/models/time.dart';
import 'package:flutter/material.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class ACHomePage extends StatelessWidget {
  Time time = Time();

  var url = 'https://api.cartolafc.globo.com/time/id/26050244';

  Future<void> getTime() async {
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body);
      var pontos = jsonResponse['time']['nome'];
      print('Number of books about http: $pontos.');
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }

  @override
  Widget build(BuildContext context) {
    getTime();
    return Scaffold(
      appBar: AppBar(
        title: Text('Amigos do Cartola'),
      ),
      body: Center(
        child: Text('Cartola'),
      ),
    );
  }
}

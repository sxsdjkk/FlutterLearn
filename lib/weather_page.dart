import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
import './weather.dart';

class WeatherPage extends StatefulWidget {
  WeatherPage({Key key}) : super(key: key);

  @override
  _WeatherPageState createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  int _counter = 0;
  List<Map<String, dynamic>> newTitle = [];

  Future _loadWeatherCast() async {
    var responseBody;
    var url = 'http://wthrcdn.etouch.cn/weather_mini?citykey=101070101';
    var httpClient = new HttpClient();
    var request = await httpClient.getUrl(Uri.parse(url));
    var response = await request.close();
    if (response.statusCode == 200) {
      responseBody = await response.transform(utf8.decoder).join();
//        responseBody=JSON.decode(responseBody);
      responseBody = jsonDecode(responseBody);
      responseBody = responseBody['data']['forecast'];
      print("responseBody---");
      print(responseBody);
    } else {
      print("error");
    }
//      print("responseBody['data']['forecast']");
//      print(responseBody['data']['forecast']);
    List list = responseBody.toList();
    print("list---");
    print(list);
    list.forEach((f) {
      Map<String, dynamic> map = f;
      newTitle.add(map);
      print(f);
    });
    setState(() {
      newTitle = newTitle;
    });
//      print("newTitle---");
//      print(newTitle);
  }

  void _asyncLoad() {
      _loadWeatherCast();
  }

  @override
  void initState() {
    _asyncLoad();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text('Weather forecast'),
          backgroundColor: Colors.orange,
        ),
//      appBar:
        body: Container(
//      width: 300,
//      height: 600,
          color: Color.fromARGB(0xff, 0xff, 0xff, 0xff),
          child: ListView(
            children: newTitle.map((Map item) {
              return new Weather(item['type']);
            }).toList(),
          ),
        ));
  }
}

import 'package:flutter/material.dart';

class Weather extends StatefulWidget {
  final String title;
  Weather(this.title);
  @override
  createState() => new WeatherState();
}

class WeatherState extends State<Weather> {
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 100,
      padding: new EdgeInsets.only(left: 21, top: 0, right: 21),
      color: Color.fromARGB(0xff, 0xcc, 0xcc, 0xcc),
//        decoration: new BoxDecoration(
//            border:new Border(
//                bottom: new BorderSide(width: 1.0,color:const Color(0xff999999))
//            )
//        ),
      child: new Text(widget.title,
        style: Theme.of(context).textTheme.body1,
      ),
    );
  }
}
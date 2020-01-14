import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'string_test.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new CupertinoApp(title: "Dart Test", home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() {
    StringTest.test();
    var s = StringTest.construct('ssssss');
    s.printValue();
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var gifts = Map();
    gifts['first'] = 'partridge';
    gifts['second'] = 'turtledoves';
    gifts['fifth'] = 'golden rings';
    print("s----${gifts["first"].runtimeType}");
    String clapping = '\u{1f44f}';
    print(clapping);
    print(clapping.codeUnits);
    print(clapping.runes.toList());
    print(clapping.substring(0));
    Runes input = new Runes(
        '\u2665-\u{1f605}-\u{1f60e}-\u{1f47b}-\u{1f596}-\u{1f44d}');
    print(new String.fromCharCodes(input));
    print(new String.fromCharCodes(input).length);
    print(new String.fromCharCodes(input).substring(5));
    const bar = 1000000;       // Unit of pressure (dynes/cm2)
    const atm = 1.01325 * bar; // Standard atmosphere
    print(atm);
    return Container(
      color: Color.fromARGB(255, 255, 255, 255),
      child: Column(
        children: <Widget>[
          Text(
            "[TTTTTTTTTTTTTTT]",
            style: TextStyle(
              fontSize: 32,
              color: Color.fromARGB(255, 0, 255, 0),
            ),
          ),
//          FloatingActionButton(
//            onPressed: _incrementCounter,
//            tooltip: 'Increment',
//            child: Icon(Icons.add),
//          ),
          Card(
              child: Column(
                children: <Widget>[
                  Text("card children1"),
                  Text("card children2")
                ],
              ),
          ),
          SizedBox(
            width: 180,
            height: 60,
            child: Card(
              child: Column(
                children: <Widget>[

                  Text("card children1"),
                  Text("card children2")
                ],
              ),
            )
          )
        ],
      ),
    );
  }
}

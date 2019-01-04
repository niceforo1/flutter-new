import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo Prueba',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text('Share'),
            leading: BackButton(color: Colors.white),
            backgroundColor: Colors.pink,
          ),
          body: Center(
              child: Stack(
            children: <Widget>[
              Image(
                  image: new AssetImage('assets/caduca.jpeg'),
                  fit: BoxFit.cover,
                  height: double.infinity),
              Opacity(
                  opacity: 0.6,
                  child: Center(
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                          color: const Color(0xff7c94b6),
                          shape: BoxShape.rectangle),
                    ),
                  )),
              Center(
                child: Text('pUTO', style: TextStyle(color: Colors.white)),
              )
            ],
          )),
        ));
  }
}

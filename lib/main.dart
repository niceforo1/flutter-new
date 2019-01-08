import 'package:flutter/material.dart';
//import 'package:trips_app/platzi_trips.dart';
import 'package:trips_app/platzi_trips_cupertino.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo Prueba',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
//        home: PlatziTrips());
        home: PlatziTripsCupertino());
  }
}

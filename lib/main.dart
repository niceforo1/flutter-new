import 'package:flutter/material.dart';
import 'description_place.dart';
import 'review_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  String descrptionDummy =
      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.';

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo Prueba',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text('APP BAR'),
          ),
          body: LayoutBuilder(
            builder:
                (BuildContext context, BoxConstraints viewportConstraints) {
              return SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: viewportConstraints.maxHeight,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      new DescriptionPlace("Bahamasa", 4, descrptionDummy),
                      new ReviewList()
                    ],
                  ),
                ),
              );
            },
          ),
        )
//        body: Column(
//          children: <Widget>[
//            new DescriptionPlace("Bahamas", 4, descrptionDummy),
//            LayoutBuilder(
//              builder: (BuildContext context, BoxConstraints viewportConstraints) {
//                return SingleChildScrollView(
//                  child: ConstrainedBox(
//                    constraints: BoxConstraints(
//                      minHeight: viewportConstraints.maxHeight,
//                    ),
//                    child: Column(
//                      mainAxisSize: MainAxisSize.min,
//                      mainAxisAlignment: MainAxisAlignment.spaceAround,
//                      children: <Widget>[
//                        new ReviewList()
//                      ],
//                    ),
//                  ),
//                );
//              },
//            ),
//          ],
//        )
        );
  }
//Aplicacion con FONDO foto y texto centrado con opacidad
/*@override
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
                      height: 25,
                      decoration: BoxDecoration(
                          color: const Color(0xff7c94b6),
                          shape: BoxShape.rectangle),
                    ),
                  )),
              Center(
                child: Text('Flutter', style: TextStyle(color: Colors.white)),
              )
            ],
          )),
        ));
  }*/
}

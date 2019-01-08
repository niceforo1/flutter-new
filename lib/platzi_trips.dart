import 'package:flutter/material.dart';
import 'home_trip.dart';
import 'search_trips.dart';
import 'profile_trips.dart';

class PlatziTrips extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _PlatziTrips();
  }
}

class _PlatziTrips extends State<PlatziTrips> {

  int _indexTap = 0;

  final List<Widget> widgetChildren = [
    HomeTrips(),
    SearchTrips(),
    ProfileTrips()
  ];

  void onTapTapped(int index){
    setState(() {
      _indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: widgetChildren[_indexTap],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.purple
        ),
          child: BottomNavigationBar(
            onTap: onTapTapped,
            currentIndex: _indexTap,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  title: Text("")
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.search),
                    title: Text("")
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person),
                    title: Text("")
                ),
              ]
          )
      ),
    );
  }

}
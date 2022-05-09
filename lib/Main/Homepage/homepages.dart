import "package:flutter/material.dart";
import "homepage.dart";
import "search.dart";
import "multiple.dart";
import "profile.dart";
class Homepages extends StatefulWidget {
  const Homepages({ Key? key }) : super(key: key);

  @override
  State<Homepages> createState() => _HomepagesState();
}

class _HomepagesState extends State<Homepages> {

  List<Widget> widgets = [
    Homepage(),
    Multiple(),
    Search(),
    Profile(),

  ];

  void selectnavigation(int index) {
    setState(() {
      _selectedIndex = index;
      
    });
  }
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.black),
            label: ""
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/images/Multiple.png"),
            label: ""
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Colors.black),
            label: ""
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.black,),
            label: ""
          )
        ],
        onTap: selectnavigation,
        currentIndex: _selectedIndex,
        backgroundColor: Colors.white,
      ),
      body: widgets[_selectedIndex],

      
    );
  }
}
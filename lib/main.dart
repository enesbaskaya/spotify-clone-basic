import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'libraryPage.dart';
import 'mainPage.dart';
import 'searchPage.dart';
import 'premiumPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData.dark(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: show(index),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.grey[900]
        ),
        child: BottomNavigationBar(
          currentIndex: index,
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: true,
          unselectedItemColor: Colors.white54,
          selectedItemColor: Colors.white,
          onTap: ((int i){
            setState(() {
              index = i;
              show(index);
            });
          }),
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home,),label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search,),label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.library_music,),label: 'Your Library'),
            BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.spotify,),label: 'Premium'),
          ],
        ),
      ),
    );
  }
}

Widget show(int index) {
  switch(index){
    case 0: return MainPage();
    break;
    case 1: return SearchPage();
    break;
    case 2: return LibraryPage();
    break;
    case 3: return PremiumPage();
    break;
  }
}


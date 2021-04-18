import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color.fromRGBO(40, 96, 65, 7.0), Color(0xff191414)],
          begin: Alignment.topLeft,
          end: FractionalOffset(0.3, 0.3),
        ),
      ),
      child: ListView(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(45.0),
                ),
                headerContainer(),
                middleContainer(),
                footerContainer(),
              ],
            ),
          )
        ],
      ),
    );
  }

  Container footerContainer() {
    return Container(
      height: 250.0,
      child: Column(
        children: [
          Text(
            'Recommendation',
            style: TextStyle(
                color: Colors.white.withOpacity(1.0),
                fontSize: 23.0,
                fontFamily: 'SpotifyFont',
                fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
          ),
          Container(
            height: 165.0,
            child: ListView.builder(
              itemCount: imagePathList.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    SizedBox(
                      height: 130.0,
                      width: 140.0,
                      child: Image.asset(
                        imagePathList[index],
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(5.0)),
                    Text(
                      imageTxt[index],
                      style: TextStyle(
                        color: Colors.white.withOpacity(1.0),
                        fontFamily: 'SpotifyFont',
                        fontSize: 10.0,
                      ),
                    )
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Container middleContainer() {
    return Container(
      height: 290,
      child: Column(
        children: [
          Text(
            'Made for you',
            style: TextStyle(
                color: Colors.white.withOpacity(1.0),
                fontSize: 23.0,
                fontFamily: 'SpotifyFont',
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 210,
            width: 210,
            child: Image.asset(
              'assets/Selection_004.png',
              fit: BoxFit.fill,
            ),
          ),
          Text(
            'Songs you loved most this year\nwrapped up',
            style: TextStyle(
              color: Colors.white70,
              fontSize: 12.5,
              fontFamily: 'SpotifyFont',
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Container headerContainer() {
    return Container(
      height: 250.0,
      child: Column(
        children: [
          Text(
            'Recently Played',
            style: TextStyle(
                color: Colors.white.withOpacity(1.0),
                fontSize: 23.0,
                fontFamily: 'SpotifyFont',
                fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
          ),
          Container(
            height: 165.0,
            child: ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    SizedBox(
                      height: 130.0,
                      width: 140.0,
                      child: Image.asset(
                        'assets/eminem.jpeg',
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(5.0)),
                    Text(
                      'This Is Eminem',
                      style: TextStyle(
                        color: Colors.white.withOpacity(1.0),
                        fontFamily: 'SpotifyFont',
                        fontSize: 10.0,
                      ),
                    )
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

List<String> imagePathList = [
  'assets/Billie.jpeg',
  'assets/download.jpeg',
  'assets/eminem.jpeg',
  'assets/Billie.jpeg',
  'assets/download.jpeg',
  'assets/eminem.jpeg',
  'assets/Billie.jpeg',
  'assets/download.jpeg',
];

List<String> imageTxt = [
  'This is Billie',
  "Today's top hits",
  'This is Eminem',
  'This is Billie',
  "Today's top hits",
  'This is Eminem',
  'This is Billie',
  "Today's top hits"
];

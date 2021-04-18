import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xff414345), Color(0xff000000)],
            begin: Alignment.topLeft,
            end: FractionalOffset(0.2, 0.7),
          ),
        ),
        child: ListView(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.all(30)),
                  searchText(),
                  Padding(padding: EdgeInsets.all(10)),
                  searchCard(),
                  middleContent(),
                ],
              ),
            )
          ],
        ));
  }

  Container searchText() {
    return Container(
      child: Text(
        'Search',
        style: TextStyle(
            color: Colors.white.withOpacity(1.0),
            fontFamily: 'SpotifyFont',
            fontSize: 50),
      ),
    );
  }

  Align middleContent() {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Your top genres',
              style: TextStyle(fontSize: 20, fontFamily: 'SpotifyFont'),
            ),
            GridView.builder(
                itemCount: 3,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                shrinkWrap: true,
                controller: ScrollController(keepScrollOffset: false),
                itemBuilder: (BuildContext context, int index) {
                  return GridTile(
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Card(
                        margin: EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        clipBehavior: Clip.antiAlias,
                        child: Image.asset(
                          'assets/genre.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }

  Card searchCard() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
      clipBehavior: Clip.antiAlias,
      child: Container(
        height: 45,
        width: 350,
        color: Colors.white,
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 40),
            ),
            Icon(
              Icons.search,
              color: Colors.black,
            ),
            Padding(
              padding: EdgeInsets.all(5),
            ),
            Text(
              'Artists, songs or podcats',
              style: TextStyle(
                  color: Colors.black, fontSize: 20, fontFamily: 'SpotifyFont'),
            ),
          ],
        ),
      ),
    );
  }
}

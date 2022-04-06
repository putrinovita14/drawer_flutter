import 'package:flutter/material.dart';

class Playlist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(15),
        child: ListView(
          children: [
            Card(
              elevation: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(3),
                    margin: EdgeInsets.all(3),
                    child: Image.network("https://play-lh.googleusercontent.com/zFg2YTiee5wVZWU1TarG40VgqWieEOThij7I6IleJ1pJXeMsG6D835K8vIyA1VAZvQ"),
                  ),
                  Container(
                    // color: Colors.amber,
                    padding: EdgeInsets.fromLTRB(6, 0, 0, 5),
                    child: Text(
                      "Music Pop",
                      style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 237, 94, 220), fontWeight: FontWeight.w700),
                    ),
                  )
                ],
              ),
            ),
            Card(
              elevation: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.all(5),
                    child: Image.network("https://w7.pngwing.com/pngs/790/374/png-transparent-rock-music-musical-ensemble-musician-classic-rock-rock-band-miscellaneous-text-banner.png"),
                  ),
                  Container(
                    // color: Colors.amber,
                    padding: EdgeInsets.fromLTRB(6, 0, 0, 5),
                    child: Text(
                      "Music Rock",
                      style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 255, 221, 110), fontWeight: FontWeight.w700),
                    ),
                  )
                ],
              ),
            ),
            Card(
              elevation: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.all(5),
                    child: Image.network("https://i.ytimg.com/vi/_QxHRGZUQI4/maxresdefault.jpg"),
                  ),
                  Container(
                    // color: Colors.amber,
                    padding: EdgeInsets.fromLTRB(6, 0, 0, 5),
                    child: Text(
                      "Music Koplo",
                      style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 51, 60, 131), fontWeight: FontWeight.w700),
                    ),
                  )
                ],
              ),
            ),
            Card(
              elevation: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.all(5),
                    child: Image.network("https://www.cultura.id/wp-content/uploads/2020/04/Musik_Jazz_di_Indonesia-Cultura.jpg"),
                  ),
                  Container(
                    // color: Colors.amber,
                    padding: EdgeInsets.fromLTRB(6, 0, 0, 5),
                    child: Text(
                      "Music Jazz",
                      style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 0, 204, 255), fontWeight: FontWeight.w700),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          _drawerHeader(),
          _drawerItem(
              icon: (Icons.audiotrack),
              text: 'Songs',
              onTap: () {
                DefaultTabController.of(context)?.animateTo(0);
                Navigator.pop(context);
              }),
          _drawerItem(
              icon: (Icons.playlist_play),
              text: 'Playlist',
              onTap: () {
                DefaultTabController.of(context)?.animateTo(1);
                Navigator.pop(context);
              }),
          _drawerItem(
              icon: (Icons.favorite),
              text: 'Favorite',
              onTap: () {
                DefaultTabController.of(context)?.animateTo(2);
                Navigator.pop(context);
              }),
          Divider(
            height: 25,
            thickness: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
            child: Text(
              'Label',
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
          ),
          _drawerItem(
            icon: (Icons.bookmark),
            text: 'Family Rooms',
            onTap: () => print('Tap to Family Rooms Menu'),
          ),
          _drawerItem(
            icon: (Icons.exit_to_app),
            text: 'Exit',
            onTap: () => print('Tap to Exit Menu'),
          ),
        ],
      ),
    );
  }
}

Widget _drawerHeader() {
  return UserAccountsDrawerHeader(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsU7tbFvuAe9J3bwQDJ6dLABV0OtkbLNVOjA&usqp=CAU'),
      ),
    ),
    currentAccountPicture: ClipOval(
      child: Image(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtw-f9VBKKztm5aNJYVNcrhB2Y0MPfokxaEd3OQG-ZG2cWXm2fuldrhR_I9KJeTchs0mA&usqp=CAU'), fit: BoxFit.cover),
    ),
    otherAccountsPictures: [
      ClipOval(
        child: Image(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSEuIrOx5wMrAV94WKcYC7myB0hCea0gz5vZiqe8OEBBwxVYx_BkbR4l2ZQae1k7sEg0-M&usqp=CAU'), fit: BoxFit.cover),
      ),
      ClipOval(
        child: Image(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwN6Uv9Vr8-OuUZjVab4Pe9cYBzLUDAD13IOEIYH5xQ_0xruXpoIDYUzKBI0q_xgJYTiI&usqp=CAU'), fit: BoxFit.cover),
      )
    ],
    accountName: Text('My Music'),
    accountEmail: Text('music@putriNovita.com'),
  );
}

Widget _drawerItem({required IconData icon, required String text, required GestureTapCallback onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(icon),
        Padding(
          padding: EdgeInsets.only(left: 25.0),
          child: Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    ),
    onTap: onTap,
  );
}

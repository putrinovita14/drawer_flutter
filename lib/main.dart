import 'dart:html';

import 'package:flutter/material.dart';
import 'package:drawerwidget/nav_draw.dart';
import 'package:drawerwidget/packages/songs.dart';
import 'package:drawerwidget/packages/playlist.dart';
import 'package:drawerwidget/packages/favorit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        drawer: CustomDrawer(),
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                toolbarHeight: 150,
                pinned: true,
                expandedHeight: 150,
                backgroundColor: Colors.deepPurpleAccent[400],
                title: const Text(
                  'Drawer Navigation',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 23, color: Colors.white),
                ),
                centerTitle: true,
                bottom: const PreferredSize(
                  child: TabBar(
                    indicatorColor: Colors.black,
                    tabs: [
                      Tab(icon: Icon(Icons.audiotrack), text: "Songs"),
                      Tab(icon: Icon(Icons.playlist_play), text: "Playlist"),
                      Tab(icon: Icon(Icons.favorite), text: "Favorit"),
                    ],
                  ),
                  preferredSize: Size.fromHeight(0),
                ),
              )
            ];
          },
          body: TabBarView(
            children: <Widget>[
              Songs(),
              Playlist(),
              Favorit()
            ],
          ),
        ),
      ),
    );
  }
}

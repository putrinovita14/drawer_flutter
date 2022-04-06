import 'package:flutter/material.dart';

class Favorit extends StatelessWidget {
  final List musc = [
    "Rizki Febian - Hingga Tua Bersama",
    "Happy Asmara - Ojo Nangis",
    "Mahalini - Janji Kita",
    "Lyodra - Pesan Terakhir",
    "Tulus - Monokrom",
    "Admesh - Bisa Tanpamu",
    "Tulus - Diri",
    "Kaleb J - It's Only Me",
    "Tulus - Pamit",
    "Happy Asmara - Pingal",
    "Justin Bieaber - Anyone",
    "Sezairi - It's You"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
                title: Text(musc[index], style: TextStyle(fontSize: 18)),
                subtitle: Text('putar lagu fav - ' + musc[index]),
                leading: CircleAvatar(
                  child: Text(musc[index][0], // ambil karakter pertama text
                      style: TextStyle(fontSize: 30)),
                )),
          );
        },
        itemCount: musc.length,
      ),
    );
  }
}

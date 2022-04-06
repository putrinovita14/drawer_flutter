import 'package:flutter/material.dart';

class Songs extends StatelessWidget {
  final List lagu = [
    "Rizki Febian - Cukup Tau",
    "Tiara Andini - Merasa Indah",
    "Mahalini - Sisa Rasa",
    "Lyodra - Pesan Terakhir",
    "Tulus - Pamit",
    "Admesh - Bisa Tanpamu",
    "Tulus - Diri",
    "Kaleb J - It's Only Me",
    "Denny Caknan - Pingal",
    "Happy Asmara - Ojo Nangis",
    "Adele - Easy On Me",
    "Sezairi - It's You"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
                title: Text(lagu[index], style: TextStyle(fontSize: 18)),
                subtitle: Text('putar lagu dari ' + lagu[index]),
                leading: CircleAvatar(
                  child: Text(lagu[index][0], // ambil karakter pertama text
                      style: TextStyle(fontSize: 30)),
                )),
          );
        },
        itemCount: lagu.length,
      ),
    );
  }
}

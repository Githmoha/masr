import 'package:flutter/material.dart';
import 'package:tawari_misr/screens/proposed.dart';
import 'package:tawari_misr/screens/proposed_%D8%A7%D9%84%D8%A7%D8%B3%D8%B9%D8%A7%D9%81.dart';
import 'package:tawari_misr/screens/proposed_%D8%A7%D9%84%D8%BA%D8%A7%D8%B2.dart';
import 'package:tawari_misr/screens/proposed_%D8%A7%D9%84%D9%83%D9%87%D8%B1%D8%A8%D8%A7%D8%A1.dart';
import 'package:tawari_misr/screens/proposed_%D9%85%D8%B7%D8%A7%D9%81%D9%89.dart';
import 'package:tawari_misr/tawari_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Hompage(),
    );
  }
}

class Hompage extends StatelessWidget {
  List tawari = [
    {"name": "اسعاف", "screen": "Images/اسعاف مصر.jpg"},
    {"name": "شرطة", "screen": "Images/شرطة.jpg"},
    {"name": "غاز", "screen": "Images/غاز.jpg"},
    {"name": "كهرباء", "screen": "Images/كهرباء مصر.jpg"},
    {"name": "مطافى", "screen": "Images/مطافى مصر.jpg"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text(
          'الخدمات',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blueGrey,
              ),
              child: Text('المقترحات',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            ListTile(
              leading: Icon(
                Icons.local_hospital,
              ),
              title: const Text('الاسعاف',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              onTap: () {
                // Update the state of the app.
                // ...
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return Proposed_Ambulance();
                }));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.policy,
              ),
              title: const Text(' الشرطة',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              onTap: () {
                // Update the state of the app.
                // ...
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return Proposed_police();
                }));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.local_fire_department,
              ),
              title: const Text('الغاز',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              onTap: () {
                // Update the state of the app.
                // ...
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return Proposed_Gas();
                }));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.emoji_objects,
              ),
              title: const Text(
                ' الكهرباء',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                // Update the state of the app.
                // ...
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return Proposed_Electricity();
                }));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.water_drop,
              ),
              title: const Text(' المطافى',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              onTap: () {
                // Update the state of the app.
                // ...
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return Proposed_myfire();
                }));
              },
            ),
          ],
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: ListView.builder(
            itemCount: tawari.length,
            itemBuilder: (context, i) {
              return GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return TawariScreen(title: tawari[i]['name']);
                  }));
                },
                child: Container(
                  height: 260,
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(tawari[i]['screen']),
                        radius: 100,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '${tawari[i]['name']}',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

import 'package:history_street/pages/profile/profile.dart';
import 'package:history_street/pages/bookmark/bookmark.dart';
import 'package:history_street/pages/score/score.dart';
import 'package:history_street/pages/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: GoogleFonts.robotoMonoTextTheme(
          Theme.of(context).textTheme,
        ),
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Roboto',
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = <Widget>[
    const Home(),
    const Score(),
    const BookMark(),
    const Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onCameraPressed() async {
    final imagePicker = ImagePicker();
    final pickedImage = await imagePicker.pickImage(
      source: ImageSource.camera,
      preferredCameraDevice: CameraDevice.rear,
      maxWidth: 600,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.home),
              onPressed: () => _onItemTapped(0),
              color:
                  _selectedIndex == 0 ? const Color(0xFF242451) : Colors.grey,
            ),
            IconButton(
              icon: const Icon(Icons.leaderboard),
              onPressed: () => _onItemTapped(1),
              color:
                  _selectedIndex == 1 ? const Color(0xFF242451) : Colors.grey,
            ),
            const SizedBox(width: 48), // Espace pour le FloatingActionButton
            IconButton(
              icon: const Icon(Icons.bookmark),
              onPressed: () => _onItemTapped(2),
              color:
                  _selectedIndex == 2 ? const Color(0xFF242451) : Colors.grey,
            ),
            IconButton(
              icon: const Icon(Icons.person),
              onPressed: () => _onItemTapped(3),
              color:
                  _selectedIndex == 3 ? const Color(0xFF242451) : Colors.grey,
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        margin: const EdgeInsets.only(top: 40),
        child: FloatingActionButton(
          backgroundColor: Colors.white,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(1)),
          ),
          onPressed: () {
            _onCameraPressed();
          },
          child: const Icon(Icons.camera_alt),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

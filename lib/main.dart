import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:history_street/widget/discovery.dart';
import 'package:history_street/widget/header.dart';
import 'package:history_street/widget/historical.dart';

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
      ),
      home: const SafeArea(
        child: Scaffold(
          body: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Header(),
                SizedBox(height: 20),
                Discovery(),
                SizedBox(height: 20),
                Historical(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

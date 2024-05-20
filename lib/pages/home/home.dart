import 'package:flutter/material.dart';
import 'package:history_street/pages/home/widgets/discovery.dart';
import 'package:history_street/pages/home/widgets/header.dart';
import 'package:history_street/pages/home/widgets/historical.dart';
import 'package:history_street/pages/home/widgets/latest.dart';
import 'package:history_street/pages/home/widgets/liked.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Header(),
            Discovery(),
            Historical(),
            Latest(),
            Liked(),
          ],
        ),
      ),
    );
  }
}

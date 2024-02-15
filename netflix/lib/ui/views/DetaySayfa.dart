import 'package:flutter/material.dart';
import 'package:netflix/data/entity/filmler.dart';

class DetaySayfa extends StatefulWidget {

  Filmler film;

  DetaySayfa({required this.film});

  @override
  State<DetaySayfa> createState() => _DetaySayfaState();
}

class _DetaySayfaState extends State<DetaySayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text(widget.film.resim),
          ],
        ),
      ),
    );
  }
}

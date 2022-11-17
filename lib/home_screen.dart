import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'cell.dart';
import 'game.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Game> games = [
    new Game.full("dmc5.jpg", "Devil may cry", 200),
    new Game.full("fifa.jpg", "Fifa 22", 200),
    new Game.full("minecraft.jpg", "Minecraft", 250),
    new Game.full("nfs.jpg", "Need for speed", 100),
    new Game.full("rdr2.jpg", "Red Dead Redemption 2", 150)
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('G-store Esprit')),
        body: ListView.builder(
          itemCount: games.length,
          itemBuilder: (BuildContext context, int index) {
            return Cell(games[index]);
          },
        ));
  }
}

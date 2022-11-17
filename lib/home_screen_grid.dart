import 'package:flutter/material.dart';

import 'cell.dart';
import 'game.dart';
import 'grid_cell.dart';

class HomeScreenGrid extends StatefulWidget {
  const HomeScreenGrid({super.key});

  @override
  State<HomeScreenGrid> createState() => _HomeScreenGridState();
}

class _HomeScreenGridState extends State<HomeScreenGrid> {
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
        appBar: AppBar(title: Text('grid')),
        body: GridView.builder(
            itemCount: games.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            itemBuilder: (context, index) {
              return GridCell(games[index]);
            }));
  }
}

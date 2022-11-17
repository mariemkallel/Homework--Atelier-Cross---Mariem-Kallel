import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'game.dart';

class GridCell extends StatelessWidget {
  final Game mGame;
  GridCell(this.mGame, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Image.asset("Assets/${mGame.image}", width: 10),
          ]),
        ],
      ),
    ));
  }
}

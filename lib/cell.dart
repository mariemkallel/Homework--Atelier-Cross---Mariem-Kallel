import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'game.dart';

class Cell extends StatelessWidget {
  final Game mGame;
  Cell(this.mGame, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Image.asset("Assets/${mGame.image}", width: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child:
                  Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                Text(mGame.title,
                    style: const TextStyle(color: Colors.black, fontSize: 16)),
                Text("${mGame.price.floor().toString()}TND",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold)),
              ]),
            )
          ]),
        ],
      ),
    ));
  }
}

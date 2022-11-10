import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'cell.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('G-store Esprit')),
        body: Column(children: [
          Cell("dmc5.jpg", "Devil may cry", 200),
          Cell("fifa.jpg", "Fifa 22", 200),
          Cell("minecraft.jpg", "Minecraft", 250),
          Cell("nfs.jpg", "Need for speed", 100),
          Cell("rdr2.jpg", "Red Dead Redemption 2", 150),
        ]));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Cell extends StatelessWidget {
  final String image;
  final String title;
  final double price;
  Cell(this.image, this.title, this.price);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Image.asset("Assets/$image", width: 200),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child:
                  Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                Text(title,
                    style: TextStyle(color: Colors.black, fontSize: 16)),
                Text("${price.floor().toString()}TND",
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

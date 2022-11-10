import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CellDetail extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final double price;
  CellDetail(this.image, this.title, this.description, this.price);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(title)),
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset("Assets/$image", width: 400),
          ),
          Flexible(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(description),
          )),
          Text("${price.floor().toString()}TND",
              style: TextStyle(color: Colors.black, fontSize: 30)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.shopping_basket), //icon data for elevated button
              label: Text("Acheter"), //label text
            ),
          )
        ]));
  }
}

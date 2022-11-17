import 'package:ateliercross/DetailsScreen.dart';
import 'package:ateliercross/add_cell.dart';
import 'package:ateliercross/home_screen.dart';
import 'package:ateliercross/home_screen_grid.dart';
import 'package:ateliercross/login.dart';
import 'package:flutter/material.dart';

import 'cell_detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: const HomeScreenGrid());
    // CellDetail(
    //     "dmc5.jpg",
    //     "Devil may cry",
    //     "The trees, therefore, must be such old and primitive techniques that they thought nothing of them, deeming them so inconsequential that even savages like us would know of them and not be suspicious. At that, they probably didn't have too much time after they detected us orbiting and intending to land. And if that were true, there could be only one place where their civilization was hidden",
    //     200));
  }
}

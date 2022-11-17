import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Login')),
        body: SingleChildScrollView(
            child: Column(
          children: [
            Image.asset("Assets/minecraft.jpg", width: 380),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Username',
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Email',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {},
                //icon data for elevated button
                child: Text("S'authentifier"), //label text
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 400,
                child: ElevatedButton(
                  onPressed: () {},
                  //icon data for elevated button
                  style: ElevatedButton.styleFrom(primary: Colors.red),
                  child: Text("Créer un compte"), //label text
                ),
              ),
            ),
            Row(
              children: [
                Text("Mot de passe oublié?"),
                TextButton(onPressed: () {}, child: Text("Cliquez içi"))
              ],
            )
          ],
        )));
  }
}

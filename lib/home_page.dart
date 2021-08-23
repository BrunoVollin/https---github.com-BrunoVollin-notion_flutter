import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'app_controll.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
                currentAccountPicture: Image.asset("assets/logo.png"),
                accountName: Text("Bruno"),
                accountEmail: Text("Bruno@email.com")),
            ListTile(
                leading: Icon(Icons.home),
                title: Text("Inicio"),
                subtitle: Text("Tela de inicio"),
                onTap: () {
                  print("Home");
                }),
            ListTile(
                leading: Icon(Icons.logout),
                title: Text("Sair"),
                subtitle: Text("Tela de Login"),
                onTap: () {
                  Navigator.of(context).pushReplacementNamed("/");
                })
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Meu App"),
        actions: [CustomSwitch()],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Text(
              '$counter',
              style: TextStyle(fontSize: 100),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    counter++;
                  });
                },
                child: Icon(Icons.add))
          ],
        ),
      ),
    );
  }
}

class CustomSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppControll.instance.isDarkTheme,
      onChanged: (value) {
        print(value);
        AppControll.instance.changeTheme();
      },
    );
  }
}

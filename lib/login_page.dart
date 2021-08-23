import 'package:flutter/material.dart';
import 'package:test/home_page.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  onPressed() {
    if (email == "b" && password == "1") {
      Navigator.of(context).pushNamed("/home");
    } else {
      print("Login Incorreto");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: SingleChildScrollView(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    child: Image.asset("assets/logo.png"),
                  ),
                  SizedBox(height: 50),
                  TextField(
                    onChanged: (text) {
                      email = text;
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), labelText: 'Email'),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    onChanged: (text) {
                      password = text;
                    },
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), labelText: 'Password'),
                  ),
                  ElevatedButton(onPressed: onPressed, child: Text("Entrar"))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

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
    if (email == "bruno" && password == "123") {
      Navigator.of(context).pushNamed("/home");
    } else {
      print("Login Incorreto");
    }
  }

  background() {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Image.network(
        "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/1200px-Image_created_with_a_mobile_phone.png",
        fit: BoxFit.cover,
      ),
    );
  }

  body() {
    return SingleChildScrollView(
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
              Card(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 10, top: 20, right: 10, bottom: 20),
                  child: Column(
                    children: [
                      TextField(
                        onChanged: (text) {
                          email = text;
                        },
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Email',
                        ),
                      ),
                      SizedBox(height: 10),
                      TextField(
                        onChanged: (text) {
                          password = text;
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Password',
                        ),
                      ),
                      ElevatedButton(
                        onPressed: onPressed,
                        style: ElevatedButton.styleFrom(primary: Colors.blue),
                        child: Container(
                          width: double.infinity,
                          child: Text(
                            "Entrar",
                            textAlign: TextAlign.center,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Stack(
          children: [
            background(),
            body(),
          ],
        ),
      ),
    );
  }
}

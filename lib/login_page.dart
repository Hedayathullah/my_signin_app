import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constants/colors.dart';

import 'auth_service.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: _buildAppBar(),
      body: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(145, 43, 9, 87),
              Color.fromARGB(153, 56, 10, 89),
              Color.fromARGB(204, 72, 10, 89),
              Color.fromARGB(255, 53, 10, 89),
            ],
          ),
        ),
        width: size.width,
        height: size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Image.asset(
              'assets/walkathon.png',
              height: 90,
              width: 345,
            ),
            GestureDetector(
                onTap: () {
                  AuthService().signInWithGoogle();
                },
                child: const Image(
                    width: 100,
                    height: 100,
                    image: AssetImage('assets/google.png'))),
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              height: 50,
              child: TextField(
                style: const TextStyle(color: Colors.black87),
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(
                        top: 10, bottom: 10, left: 10, right: 5),
                    hintText: 'Sign In By Clicking The Icon Above',
                    hintStyle: TextStyle(color: Colors.black, fontSize: 21)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

AppBar _buildAppBar() {
  return AppBar(
    backgroundColor: Color.fromARGB(255, 77, 11, 128),
    elevation: 0,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text("User Login"),
        Container(
          height: 40,
          width: 40,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            //child:
          ),
        ),
      ],
    ),
  );
}

// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:login_page_model/components/rounted_button.dart';

import '../components/account_check.dart';
import '../components/rounted_input_filed.dart';
import '../components/rounted_password_filed.dart';
import '../components/text_filed_container.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.black,
        title: Text("Login Page"),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/dubai1.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlutterLogo(
                    size: 80,
                  ),
                  Text(
                    "Flutter",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 30,
                        fontFamily: "Fasthand"),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                "Welcome to Saifty!",
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.tealAccent[400],
                ),
              ),
              SizedBox(height: 30),
              RountedInputFiled(
                hintText: "Email",
                onChanged: (value) {},
              ),
              RountedPasswordFiled(
                onChanged: (value) {},
              ),
              SizedBox(height: 20),
              RountedButton(),
              SizedBox(height: 30),
              AccountCheck(),
              SizedBox(height: 5),
              Text(
                "OR",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {},
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage:
                          AssetImage("assets/images/Facebook-logo.png"),
                    ),
                  ),
                  SizedBox(width: 30),
                  InkWell(
                    onTap: () {},
                    child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: 30,
                      backgroundImage: AssetImage("assets/images/google1.png"),
                    ),
                  ),
                  SizedBox(width: 30),
                  InkWell(
                    onTap: () {},
                    child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: 30,
                      backgroundImage: AssetImage("assets/images/twitter1.png"),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

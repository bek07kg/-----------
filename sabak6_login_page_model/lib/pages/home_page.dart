import 'package:flutter/material.dart';
import 'package:sabak6_login_page_model/model/model.dart';
import 'package:sabak6_login_page_model/pages/user_page.dart';

final studentter = <Student>[
  damir,
  ilyaz,
  aybiyke,
  dina,
  sanjar,
  madina,
  kutman,
  bekish,
  aybek,
  erkeayym,
  eliza,
  ayperi,
];

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? _name;
  String? _email;

  void controlNameEmail(String name, String email) {
    int index = 0;
    for (final student in studentter) {
      if (name == student.name && email == student.email) {
        index++;
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => UserPage(),
            ));
        break;
      } else {
        if (index == studentter.length) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text("Сиздин атыңыз же почтаңыз туура эмес!"),
            ),
          );
        } else {
          continue;
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Login Page",
          style: TextStyle(
            fontSize: 30,
            color: Colors.black,
            fontFamily: "Lobster",
          ),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
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
                    style: TextStyle(fontSize: 25, color: Color(0xff18FFFF)),
                  ),
                ],
              ),
              Text(
                "Welcome To Saifty!",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 35,
                ),
              ),
              Text(
                "Keep your data safe!",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
              SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
                child: TextField(
                  onChanged: (String value) {
                    _name = value;
                  },
                  decoration: InputDecoration(
                    labelText: "Name",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
                child: TextField(
                  onChanged: (String value) {
                    _email = value;
                  },
                  decoration: InputDecoration(
                    labelText: "Email",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(200, 40),
                    backgroundColor: Colors.blue[100]),
                onPressed: () {
                  controlNameEmail(_name!, _email!);
                },
                child: Text(
                  "Login",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

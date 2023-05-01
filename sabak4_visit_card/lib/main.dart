import 'package:flutter/material.dart';
import 'package:sabak4_visit_card/second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool active = false;
  String? phoneNumber;
  String? email;

  void work() {
    if (phoneNumber != null && email != null) {
      if (phoneNumber!.isEmpty || email!.isEmpty) {
        active = false;
      } else {
        active = true;
      }
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff056C5C),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Тапшырма 4",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 3),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("assets/images/foto1.jpg"),
              ),
              const SizedBox(height: 30),
              const Text(
                "Beknazar Murzaev",
                style: TextStyle(
                    color: Colors.white, fontSize: 45, fontFamily: "Lobster"),
              ),
              const SizedBox(height: 5),
              const Text(
                "Flutter Developer",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
              const SizedBox(height: 5),
              const Divider(
                height: 5,
                endIndent: 80,
                indent: 80,
                color: Colors.white,
              ),
              const SizedBox(height: 30),
              Container(
                color: Colors.white,
                child: TextFormField(
                  style: const TextStyle(
                      fontSize: 20,
                      color: Color(0xff056C5C),
                      fontWeight: FontWeight.w600),
                  onChanged: (String? value) {
                    phoneNumber = value;
                    work();
                    print("phoneText ===> $value");
                  },
                  decoration: const InputDecoration(
                    focusColor: Colors.white,
                    prefixIcon: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: Icon(
                        Icons.phone,
                        color: Color(0xff056C5C),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Container(
                color: Colors.white,
                child: TextFormField(
                  style: const TextStyle(
                      fontSize: 20,
                      color: Color(0xff056C5C),
                      fontWeight: FontWeight.w600),
                  onChanged: (String? value) {
                    email = value;
                    work();
                    print("emailText ===> $value");
                  },
                  decoration: const InputDecoration(
                    focusColor: Colors.white,
                    prefixIcon: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: Icon(
                        Icons.email,
                        color: Color(0xff056C5C),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  elevation: 10,
                  side: const BorderSide(
                    width: 3,
                    color: Colors.white,
                  ),
                  backgroundColor: Colors.blue,
                ),
                onPressed: active
                    ? () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SecondPage(),
                          ),
                        );
                      }
                    : null,
                child: const Text("Start"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

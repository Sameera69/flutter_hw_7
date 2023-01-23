import 'package:flutter/material.dart';
import 'package:flutter_application_7/Pages/Home.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPage();
}

class _StartPage extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Stack(
            children: [
              Image.asset(
                'images/egg.jpg',
                width: 800,
                // alignment: Alignment.center,
              ),
              Column(
                children: [
                  const SizedBox(
                    height: 60,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Kitchen Stories',
                        style: TextStyle(color: Colors.white, fontSize: 40),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 250,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Welcome',
                        style: TextStyle(color: Colors.white, fontSize: 60),
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(189, 27, 58, 146),
                        border: Border.all(
                          color: const Color.fromARGB(189, 27, 58, 146),
                        ),
                        borderRadius: const BorderRadius.all(Radius.circular(40))),
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(85, 8, 85, 8),
                      child: Text(
                        'I am new',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(189, 27, 58, 146),
                          border: Border.all(
                            color: const Color.fromARGB(189, 27, 58, 146),
                          ),
                          borderRadius: const BorderRadius.all(Radius.circular(40))),
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(64, 8, 64, 8),
                        child: Text(
                          'I\'ve been here',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}

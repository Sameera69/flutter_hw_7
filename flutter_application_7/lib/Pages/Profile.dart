import 'package:flutter/material.dart';
import 'package:flutter_application_7/Pages/Home.dart';
import 'package:flutter_application_7/Pages/Search.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePage();
}

class _ProfilePage extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: const Icon(Icons.home),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
                },
              ),
              IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const SearchPage()));
                },
              ),
              IconButton(
                icon: const Icon(Icons.create),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.pages_rounded),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.person),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const ProfilePage()));
                },
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
                      });
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.orange,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Icon(
                      Icons.settings,
                      color: Colors.orange,
                    ),
                  ),
                ],
              ),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'Profile',
                      style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    const Icon(
                      Icons.circle,
                      size: 50,
                    ),
                    Column(
                      children: [
                        const Text('John Mobbin'),
                        const Text('Community'),
                        Container(
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                border: Border.all(color: const Color.fromARGB(190, 200, 200, 200)),
                                borderRadius: const BorderRadius.all(Radius.circular(40))),
                            padding: const EdgeInsets.all(8),
                            child: const Text('Edit Profile')),
                      ],
                    ),
                  ],
                ),
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.save,
                            color: Colors.grey,
                            size: 15,
                          ),
                          Text(
                            'Cookbooks',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.book,
                            color: Colors.red,
                            size: 15,
                          ),
                          Text(
                            'Recipes',
                            style: TextStyle(color: Colors.red),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.favorite,
                            color: Colors.grey,
                            size: 15,
                          ),
                          Text(
                            'Likes',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'images/egg.jpg',
                                width: 160,
                              ),
                            ),
                            Positioned(
                              left: 5,
                              top: 5,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color: Colors.white,
                                    ),
                                    borderRadius: const BorderRadius.all(Radius.circular(40))),
                                child: const Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Text(
                                    '30 min',
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 90,
                              top: 170,
                              child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                        color: Colors.white,
                                      ),
                                      borderRadius: const BorderRadius.all(Radius.circular(40))),
                                  child: Padding(
                                    padding: const EdgeInsets.all(6.0),
                                    child: Row(
                                      children: const [
                                        Icon(
                                          Icons.favorite,
                                        ),
                                        Text(
                                          '2,567',
                                          style: TextStyle(fontSize: 10),
                                        ),
                                      ],
                                    ),
                                  )),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: const [
                        Text(
                          'Smoked Meet Sandwich',
                          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}

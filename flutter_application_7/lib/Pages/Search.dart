import 'package:flutter/material.dart';
import 'package:flutter_application_7/Pages/Home.dart';
import 'package:flutter_application_7/Pages/Profile.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPage();
}

class _SearchPage extends State<SearchPage> {
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
              children: const [
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Search',
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Hungry?',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.blue,
                    border: Border.all(color: const Color.fromARGB(190, 200, 200, 200)),
                    borderRadius: const BorderRadius.all(Radius.circular(40))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Find recipes on the web'),
                    const SizedBox(
                      width: 30,
                    ),
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.yellow,
                            border: Border.all(color: const Color.fromARGB(190, 200, 200, 200)),
                            borderRadius: const BorderRadius.all(Radius.circular(40))),
                        padding: const EdgeInsets.all(8),
                        child: const Text('COOKBOOK+')),
                  ],
                ),
              ),
            ),
            SearchMenuRow(
                menu1: 'Pasta',
                menu2: 'Asian',
                menu3: 'Main',
                image1: 'images/Pasta.png',
                image2: 'images/Asian.png',
                image3: 'images/Main.png'),
            SearchMenuRow(
                menu1: 'Quick',
                menu2: 'Meetless',
                menu3: 'Dissert',
                image1: 'images/Quick.png',
                image2: 'images/Meatless.png',
                image3: 'images/Dissert.png'),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'All recipes',
                    style: TextStyle(fontSize: 20),
                  ),
                  Icon(Icons.arrow_forward)
                ],
              ),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'All Stories',
                    style: TextStyle(fontSize: 20),
                  ),
                  Icon(Icons.arrow_forward)
                ],
              ),
            ),
            const Divider(),
          ],
        ),
      ),
    );
  }
}

class SearchMenuRow extends StatelessWidget {
  String menu1 = '';
  String menu2 = '';
  String menu3 = '';
  String image1 = '';
  String image2 = '';
  String image3 = '';
  SearchMenuRow(
      {required this.menu1,
      required this.menu2,
      required this.menu3,
      required this.image1,
      required this.image2,
      required this.image3});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.yellow,
                border: Border.all(color: const Color.fromARGB(190, 200, 200, 200)),
                borderRadius: const BorderRadius.all(Radius.circular(20))),
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                Image.asset(
                  image1,
                  width: 100,
                ),
                Text(menu1),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.yellow,
                border: Border.all(color: const Color.fromARGB(190, 200, 200, 200)),
                borderRadius: const BorderRadius.all(Radius.circular(20))),
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                Image.asset(
                  image2,
                  width: 100,
                ),
                Text(menu2),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.yellow,
                border: Border.all(color: const Color.fromARGB(190, 200, 200, 200)),
                borderRadius: const BorderRadius.all(Radius.circular(20))),
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                Image.asset(
                  image3,
                  width: 100,
                ),
                Text(menu3),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

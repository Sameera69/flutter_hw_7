import 'package:flutter/material.dart';
import 'package:flutter_application_7/Pages/Profile.dart';
import 'package:flutter_application_7/Pages/Search.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        // appBar: AppBar(),
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
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: const [
                    Icon(
                      Icons.arrow_back,
                      color: Colors.grey,
                      size: 20,
                    ),
                    Icon(
                      Icons.settings_applications_rounded,
                      color: Colors.grey,
                      size: 20,
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Kitchen Stories',
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Stack(
                children: [
                  Container(
                    color: const Color.fromARGB(255, 231, 231, 231),
                    height: 2,
                    width: 700,
                  ),
                  Container(
                    color: Colors.red,
                    height: 2,
                    width: 120,
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Story(
                      STitle: 'Handbrot',
                      Owner: 'Marco Hartz',
                      pic: 'images/hand.png',
                      time: '50',
                      likes: '2,025',
                    ),
                  ),
                  Expanded(
                    child:
                        Story(STitle: 'Braised', Owner: 'Xueci', pic: 'images/nodle.png', time: '75', likes: '2,144'),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Story(
                      STitle: 'Sheet pan',
                      Owner: 'Carolin',
                      pic: 'images/pumk.png',
                      time: '45',
                      likes: '6,077',
                    ),
                  ),
                  Expanded(
                    child: Story(
                      STitle: 'Creamy pasta',
                      Owner: 'Marco',
                      pic: 'images/spasta.png',
                      time: '30',
                      likes: '4,140',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}

class Story extends StatefulWidget {
  String STitle = '';
  String Owner = '';
  String pic = '';
  String time = '';
  String likes = '';
  Story({
    required this.STitle,
    required this.Owner,
    required this.pic,
    required this.time,
    required this.likes,
  });

  @override
  State<Story> createState() => _Story();
}

class _Story extends State<Story> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const ProfilePage()));
        });
      },
      child: Container(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    widget.pic,
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
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        '${widget.time} min',
                        style: const TextStyle(fontSize: 10),
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
                          children: [
                            const Icon(
                              Icons.favorite,
                            ),
                            Text(
                              widget.likes,
                              style: const TextStyle(fontSize: 10),
                            ),
                          ],
                        ),
                      )),
                ),
              ],
            ),
            Text(
              widget.STitle,
              style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.circle_rounded,
                  size: 50,
                ),
                Text(
                  widget.Owner,
                  style: const TextStyle(color: Colors.black, fontSize: 20),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

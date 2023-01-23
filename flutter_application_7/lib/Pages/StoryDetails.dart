import 'package:flutter/material.dart';
import 'package:flutter_application_7/Pages/Home.dart';

class StoryDetails extends StatefulWidget {
  const StoryDetails({super.key});

  @override
  State<StoryDetails> createState() => _StoryDetails();
}

class _StoryDetails extends State<StoryDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
                        });
                      },
                      child: const Icon(
                        Icons.arrow_back,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade600,
                          spreadRadius: 1,
                          blurRadius: 15,
                        )
                      ],
                      border: Border.all(color: const Color.fromARGB(190, 200, 200, 200)),
                    ),
                    child: FittedBox(
                      child: Image.asset(
                        'images/Sdetails1.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(50.0),
                    child: Text(
                      'Boiled Eggs Mix',
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 50),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 15,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 15,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 15,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 15,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 15,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                '5 ratings',
                style: TextStyle(color: Colors.grey),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
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
                          '  590',
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
                          Icons.save,
                          color: Colors.grey,
                          size: 15,
                        ),
                        Text(
                          '  Save',
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
                          Icons.share,
                          color: Colors.grey,
                          size: 15,
                        ),
                        Text(
                          '  Share',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Divider(),
              Row(
                children: [
                  const Icon(
                    Icons.circle,
                    size: 50,
                  ),
                  Column(
                    children: const [
                      Text('Marco Hartz'),
                      Text('Chef at Kitchen Stories'),
                      Text('kis-art.com/'),
                    ],
                  ),
                ],
              ),
              Container(
                  padding: const EdgeInsets.all(16),
                  child: const Text(
                    'First, we cut the boiled eggs into halves, put the egg yolk in a bowl and mix it with mayonnaise, chopped dill, chopped green onions and Almarai Labneh and mix them.Then we use this mixture to fill the egg whites with it and then cover it with Almarai Cheddar Gin and put it in the oven. Bon Appetit!',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 4,
                  )),
            ],
          ),
        ));
  }
}

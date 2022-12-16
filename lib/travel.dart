import 'package:flutter/material.dart';
import 'package:helloworld/HomePage.dart';
import 'work.dart';
import 'dart:math' as math;

class travel extends StatelessWidget {
  //final String title;
  //const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // The title text which will be shown on the action bar
          title: Text('where did I travel?'),
        ),
        bottomNavigationBar: Container(
          height: 50,
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                enableFeedback: false,
                onPressed: () {
                  {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => HomePage()));
                  }
                },
                icon: const Icon(
                  Icons.home_outlined,
                  color: Colors.white,
                  size: 35,
                ),
              ),
              IconButton(
                enableFeedback: false,
                onPressed: () {
                  {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => work()));
                  }
                },
                icon: const Icon(
                  Icons.work_outline_outlined,
                  color: Colors.white,
                  size: 35,
                ),
              ),
              IconButton(
                enableFeedback: false,
                onPressed: () {},
                icon: const Icon(
                  Icons.auto_stories_outlined,
                  color: Colors.white,
                  size: 35,
                ),
              ),
              IconButton(
                enableFeedback: false,
                onPressed: () {},
                icon: const Icon(
                  Icons.travel_explore_sharp,
                  color: Colors.white,
                  size: 35,
                ),
              ),
            ],
          ),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.red,
                  gradient: const SweepGradient(
                    startAngle: math.pi * 0.2,
                    endAngle: math.pi * 1.7,
                    colors: [
                      Colors.red,
                      Colors.yellow,
                      Colors.blue,
                      Colors.green,
                      Colors.red,
                    ],
                    stops: <double>[0.0, 0.25, 0.5, 0.75, 1.0],
                    tileMode: TileMode.clamp,
                  ),
                ),

                child: Center(
                  child: Text(
                    'Gangtok',
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
                //BoxDecoration
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(
                  "https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(color: Colors.black),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(color: Colors.red),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(color: Colors.yellowAccent),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                  colors: [Colors.purple, Colors.blueAccent, Colors.yellow],
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  stops: [0.1, 0.4, 0.7],
                  tileMode: TileMode.mirror,
                )),
              ),
            )
          ],
        ));
  }
}

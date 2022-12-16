import 'package:flutter/material.dart';
import 'package:helloworld/HomePage.dart';
import 'main.dart';

class education extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // The title text which will be shown on the action bar
          title: Text('I studied here'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                /** Card Widget **/
                child: Card(
                  elevation: 50,
                  shadowColor: Colors.black,
                  color: Colors.greenAccent[100],
                  child: SizedBox(
                    width: 400,
                    height: 250,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.green[500],
                            radius: 60,
                            child: const CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://media.geeksforgeeks.org/wp-content/uploads/20210101144014/gfglogo.png"), //NetworkImage
                              radius: 50,
                            ), //CircleAvatar
                          ), //CircleAvatar
                          const SizedBox(
                            height: 10,
                          ), //SizedBox
                          SizedBox(
                            width: 100,
                            child: ElevatedButton(
                              onPressed: () => 'Null',
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.green)),
                              child: Padding(
                                padding: const EdgeInsets.all(4),
                                child: Row(
                                  children: const [
                                    Icon(Icons.touch_app),
                                    Text('Visit')
                                  ],
                                ),
                              ),
                            ),
                          ), //SizedBox
                        ],
                      ), //Column
                    ), //Padding
                  ), //SizedBox
                ), //Card
              ),
              const SizedBox(
                height: 10,
                //child: Text('hiiiii'),
              ),
              Card(
                elevation: 50,
                shadowColor: Colors.black,
                color: Colors.greenAccent[100],
                child: SizedBox(
                  width: 400,
                  height: 500,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.green[500],
                          radius: 60,
                          child: const CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://media.geeksforgeeks.org/wp-content/uploads/20210101144014/gfglogo.png"), //NetworkImage
                            radius: 50,
                          ), //CircleAvatar
                        ), //CircleAvatar
                        const SizedBox(
                          height: 10,
                        ), //SizedBox
                        SizedBox(
                          width: 100,
                          child: ElevatedButton(
                            onPressed: () => 'Null',
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.green)),
                            child: Padding(
                              padding: const EdgeInsets.all(4),
                              child: Row(
                                children: const [
                                  Icon(Icons.touch_app),
                                  Text('Visit')
                                ],
                              ),
                            ),
                          ),
                        ), //SizedBox
                      ],
                    ), //Column
                  ), //Padding
                ), //SizedBox
              ), //Card
            ],
          ),
        ), //
        floatingActionButton:
            Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          FloatingActionButton(
            heroTag: 'btn1',
            child: Icon(Icons.add),
            onPressed: () => {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => MyApp()))
            },
            backgroundColor: Colors.pink,
          ),
          SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            heroTag: 'btn2',
            child: Icon(Icons.restart_alt),
            //onPressed: () => restart(),
            onPressed: () => {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => HomePage()))
            },
            backgroundColor: Colors.pink,
          )
        ]));
  }
}

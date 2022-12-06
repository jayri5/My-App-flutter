import 'package:flutter/material.dart';
import 'package:helloworld/HomePage.dart';
import 'main.dart';

//void main() => runApp(MyApp());

class education extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Flutter Hello World',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      // A widget which will be started on application startup
      home: MyHomePage(title: 'I studied here'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // The title text which will be shown on the action bar
          title: Text(title),
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
                    Navigator.pop(context);
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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 1,
                  child: Image.asset(
                    'assets/smp.jpg',
                    height: 50,
                    width: 20,
                    //fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Text.rich(
                    TextSpan(
                      style: TextStyle(
                        fontSize: 17,
                      ),
                      children: [
                        //TextSpan(
                        //text: 'Tap',
                        //),
                        WidgetSpan(
                          child: Icon(Icons.school),
                        ),
                        TextSpan(
                          text: 'DAV School',
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 1,
                  child: Image.asset(
                    'assets/smp.jpg',
                    height: 50,
                    width: 20,
                    //fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Text.rich(
                    TextSpan(
                      style: TextStyle(
                        fontSize: 17,
                      ),
                      children: [
                        //TextSpan(
                        //text: 'Tap',
                        //),
                        WidgetSpan(
                          child: Icon(Icons.school),
                        ),
                        TextSpan(
                          text: 'Delhi Public School',
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 1,
                  child: Image.asset(
                    'assets/smp.jpg',
                    height: 50,
                    width: 20,
                    //fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Text.rich(
                    TextSpan(
                      style: TextStyle(
                        fontSize: 17,
                      ),
                      children: [
                        //TextSpan(
                        //text: 'Tap',
                        //),
                        WidgetSpan(
                          child: Icon(Icons.school),
                        ),
                        TextSpan(
                          text: 'BUIE',
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
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

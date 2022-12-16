import 'package:flutter/material.dart';
import 'package:helloworld/HomePage.dart';
import 'work.dart';

class tech extends StatelessWidget {
  //final String title;
  //const MyHomePage({Key? key, required this.title}) : super(key: key);
  List val = ['python', 'java'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Center(child: Text('Tech I know!')),
      ),
      body: ListView.builder(
          itemCount: val.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
                leading: const Icon(Icons.javascript),
                trailing: const Text(
                  "GFG",
                  style: TextStyle(color: Colors.green, fontSize: 15),
                ),
                title: Text(val[index]));
          }),
    );
  }
}

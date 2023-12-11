import 'package:drawertutor/pages/firstpage.dart';
import 'package:drawertutor/pages/secondpage.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[300],
        elevation: 0,
        title: Center(
          child: Text("D R A W E R"),
        ),
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.deepPurple[100],
          child: ListView(
            children: [
              DrawerHeader(
                  child: Center(
                child: Text(
                  "L O G O",
                  style: TextStyle(fontSize: 40),
                ),
              )),
              ListTile(
                leading: Icon(Icons.home),
                title: Text(
                  "Page 1",
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => FirstPage()));
                },
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text(
                  "Page 2",
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => SecondPage()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

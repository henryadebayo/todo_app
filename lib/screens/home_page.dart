import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      //   title: const Text("CRAI TODO App"),
      // ),

      body: Column(
        children: [
          Container(
            height: 300,
            color: Colors.teal[300],
            width: double.infinity,
            child: const SafeArea(
              child: Column(
                children: [
                  SizedBox(
                    height: 32.0,
                  ),
                  CircleAvatar(
                    radius: 50,
                    child: Icon(
                      Icons.person,
                      size: 70,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 32.0,
                  ),
                  Text(
                    "Welcome, Khadija",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 16.0,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 250.0),
            child: Text(
              "Good Morning",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          const SizedBox(
            height: 32.0,
          ),
          Container(height: 70, width: 150, color: Colors.grey),
          const SizedBox(
            height: 32.0,
          ),
          const Padding(
            padding: EdgeInsets.only(right: 250.0, bottom: 8.0),
            child: Text(
              "Tasks List",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Container(
              height: 300,
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(24)),
            ),
          )
        ],
      ),
    );
  }
}

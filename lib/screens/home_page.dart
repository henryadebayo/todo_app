import 'package:flutter/material.dart';
import 'package:todo_app/model/taskModel.dart';

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
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(24),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.0, 0.0),
                      blurRadius: 1.0,
                    )
                  ]),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Daily Tasks ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.add_circle_outline_sharp,
                            color: Colors.teal,
                          ),
                        )
                      ],
                    ),
                    Expanded(
                        child: ListView.builder(
                            itemCount: tasksDatabase.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Row(
                                children: [
                                  Checkbox(
                                      value: tasksDatabase[index].done,
                                      onChanged: (value) {
                                        setState(() {
                                          tasksDatabase[index].done = value!;
                                        });
                                      }),
                                  Expanded(
                                    child: Text(
                                      tasksDatabase[index].tasks,
                                      overflow: TextOverflow.visible,
                                    ),
                                  )
                                ],
                              );
                            }))
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  List<TasksModel> tasksDatabase = [
    TasksModel(
        tasks: "should do all assignments before next class", done: false),
    TasksModel(
        tasks: "should "
            "attend tomorrows class",
        done: false),
    TasksModel(tasks: "should practice works from previous class ", done: false)
  ];
}

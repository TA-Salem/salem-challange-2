import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Course'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.check,
              color: Colors.white,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 90, right: 90),
        child: ListView(
          children: [
            SizedBox(
              height: 30,
            ),
            ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset("images/ttt.png")),
            Center(
              child: Text(
                "Title",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: RichText(
                  text: TextSpan(
                      text: "Design",
                      style: TextStyle(fontSize: 15, color: Colors.black),
                      children: [
                    TextSpan(
                        text: "\n28 student",
                        style: TextStyle(color: Colors.grey))
                  ])),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ))),
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (ctx) => AlertDialog(
                            title:
                                // Icon(
                                //   Icons.check,
                                //   size: 70,
                                // )
                                Image.asset(
                              "images/check.png",
                            ),
                            content: Text(
                              "Success",
                              textAlign: TextAlign.center,
                            ),
                          ));
                },
                child: Text("             Test             ")),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ))),
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (context) => ListView(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(25),
                                child: Text(
                                  "Settings",
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 150, right: 150, top: 5),
                                child: Center(
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text("data"),
                                          Switch(
                                              value: isSwitched,
                                              onChanged: toggleSwitch)
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text("data"),
                                          Switch(
                                              value: isSwitched,
                                              onChanged: toggleSwitch)
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text("data"),
                                          Switch(
                                              value: isSwitched,
                                              onChanged: toggleSwitch)
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text("data"),
                                          Switch(
                                              value: isSwitched,
                                              onChanged: toggleSwitch)
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ));
                },
                child: Text("             Test             ")),
          ],
        ),
      ),
    );
  }

  bool isSwitched = false;

  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
      });
    } else {
      setState(() {
        isSwitched = false;
      });
    }
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var numOfPeopleAdded = 12;
  @override
  Widget build(BuildContext context) => Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            // mainAxisSize: MainAxisSize.values.last,
            children: [
              const SizedBox(
                height: 65,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Add people",
                    style: TextStyle(fontSize: 30),
                  ),
                  Text(
                    "$numOfPeopleAdded added",
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                height: 60,
                // margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                    border: Border.all(),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: TextField(
                  
                  textAlign: TextAlign.center,
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(0),
                      suffixIcon: Icon(
                        Icons.search,
                        color: Colors.black,
                        size: 30,
                      ),
                      prefixIconConstraints:
                          BoxConstraints(maxHeight: 20, minWidth: 25),
                      border: InputBorder.none,
                      hintText: 'Search existing people in campus',
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 18)),
                ),
              ),
            ],
          ),
        ),
      );
}

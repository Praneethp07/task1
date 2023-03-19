import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'items.dart';
import 'details/userdetails.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'futura',
      ),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    newUserList = user;
  }

  List<Users> newUserList = [];
  List<Users> user = [
    Users(
        name: "Prof. Rama devananda Gopalji",
        imgurl:
            "https://images.unsplash.com/photo-1679198315253-88c0b0b3f4e8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60"),
    Users(
        name: "Alexa Mohammed",
        imgurl:
            "https://images.unsplash.com/photo-1679198315253-88c0b0b3f4e8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60"),
    Users(
        name: "Christopher Nolan",
        imgurl:
            "https://images.unsplash.com/photo-1679198315253-88c0b0b3f4e8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60"),
    Users(
        name: "CJ Magellan",
        imgurl:
            "https://images.unsplash.com/photo-1679198315253-88c0b0b3f4e8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60"),
    Users(
        name: "Clinton Baptist",
        imgurl:
            "https://images.unsplash.com/photo-1679198315253-88c0b0b3f4e8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60"),
    Users(
        name: "Dagis patekar",
        imgurl:
            "https://images.unsplash.com/photo-1679198315253-88c0b0b3f4e8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60"),
    Users(
        name: "Ferdinand Magellan",
        imgurl:
            "https://images.unsplash.com/photo-1679198315253-88c0b0b3f4e8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60"),
    Users(
        name: "Gangu Barman Shajahan",
        imgurl:
            "https://images.unsplash.com/photo-1679198315253-88c0b0b3f4e8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60"),
    Users(
        name: "Nirmal George Mathew",
        imgurl:
            "https://images.unsplash.com/photo-1679198315253-88c0b0b3f4e8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60"),
    Users(
        name: "Shreyas C",
        imgurl:
            "https://images.unsplash.com/photo-1679198315253-88c0b0b3f4e8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60"),
    Users(
        name: "Nirmal George Mathew",
        imgurl:
            "https://images.unsplash.com/photo-1679198315253-88c0b0b3f4e8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60"),
    Users(
        name: "Alexa Mohammed",
        imgurl:
            "https://images.unsplash.com/photo-1679198315253-88c0b0b3f4e8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60"),
    Users(
        name: "CJ Magellan",
        imgurl:
            "https://images.unsplash.com/photo-1679198315253-88c0b0b3f4e8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60"),
    Users(
        name: "Dagis patekar",
        imgurl:
            "https://images.unsplash.com/photo-1679198315253-88c0b0b3f4e8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60"),
  ];
  var numOfPeopleAdded = 0;
  @override
  Widget build(BuildContext context) => Scaffold(
        body: Container(
          color: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 40.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Text(
                    "Add people",
                    style: TextStyle(fontSize: 24.64),
                  ),
                  Text(
                    "$numOfPeopleAdded added",
                    style: const TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50.0,
              ),
              Container(
                height: 48.0,
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    border: Border.all(),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0)),
                child: TextField(
                  onChanged: (value) {
                    if (value == "") {
                      newUserList = user;
                    } else {
                      newUserList = [];
                      user.forEach((element) {
                        if (element.name.toLowerCase().startsWith(value) || element.name.startsWith(value)) {
                          newUserList.add(element);
                        }
                      });
                    }
                    setState(() {});
                  },
                  style: TextStyle(fontSize: 16.0),
                  decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.search,
                        color: Colors.black,
                        size: 25,
                      ),
                      suffixIconConstraints:
                          BoxConstraints(maxHeight: 20.0, minWidth: 25.0),
                      border: InputBorder.none,
                      hintText: 'Search existing people in campus',
                      hintStyle: TextStyle(color: Colors.grey)),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              (newUserList.length == 0)
                  ? Flexible(child:Container(
                      // height: 200,
                      // width: 200,
                      alignment: Alignment.center,
                      child: Text(
                        "No Person found",
                        style: TextStyle(fontSize: 16),
                      )) ) 
                  : Expanded(
                      child: ListView.builder(
                          padding: const EdgeInsets.all(0.0),
                          itemCount: newUserList.length,
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            return ItemCard(
                                countAdded: (p0) {
                                  numOfPeopleAdded += p0;
                                  setState(() {});
                                },
                                name: newUserList[index].name,
                                imgurl: newUserList[index].imgurl);
                          }),
                        ),
                        const SizedBox(
                            height: 40.0,
                          ),
                          
            ],
          ),
        ),
        floatingActionButton: SizedBox(
          width: 154,
          height: 40,
          child: FloatingActionButton(
            onPressed: () {},
            backgroundColor: const Color(0xFFFF0000),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Text(
              'Create Group',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      );
}

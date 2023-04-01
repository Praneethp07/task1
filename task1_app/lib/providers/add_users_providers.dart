import 'package:flutter/material.dart';
import 'package:task1_app/models/userdetails.dart';

class AddUsers with ChangeNotifier {
  List<Users> users = [
    Users(
        name: "Gangu Barman Shajahan",
        index: 0,
        email: "gangu13@gmail.com",
        imgurl:
            "https://images.unsplash.com/photo-1679198315253-88c0b0b3f4e8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60"),
    Users(
        name: "Nirmal George Mathew",
        index: 1,
        email: "gangu12@gmail.com",
        imgurl:
            "https://images.unsplash.com/photo-1679198315253-88c0b0b3f4e8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60"),
    Users(
        name: "Shreyas C",
        index: 2,
        email: "gangu11@gmail.com",
        imgurl:
            "https://images.unsplash.com/photo-1679198315253-88c0b0b3f4e8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60"),
    Users(
        name: "Nirmal George Mathew",
        index: 3,
        email: "gangu10@gmail.com",
        imgurl:
            "https://images.unsplash.com/photo-1679198315253-88c0b0b3f4e8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60"),
    Users(
        name: "Alexa Mohammed",
        index:4,
        email: "gangu9@gmail.com",
        imgurl:
            "https://images.unsplash.com/photo-1679198315253-88c0b0b3f4e8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60"),
    Users(
        name: "CJ Magellan",
        index: 5,
        email: "gangu8@gmail.com",
        imgurl:
            "https://images.unsplash.com/photo-1679198315253-88c0b0b3f4e8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60"),
    Users(
        name: "Dagis patekar",
        index:6,
        email: "gangu7@gmail.com",
        imgurl:
            "https://images.unsplash.com/photo-1679198315253-88c0b0b3f4e8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60"),
    Users(
        name: "Nirmal George Mathew",
        index: 7,
        email: "gangu6@gmail.com",
        imgurl:
            "https://images.unsplash.com/photo-1679198315253-88c0b0b3f4e8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60"),
    Users(
        name: "Shreyas C",
        index: 8,
        email: "gangu5@gmail.com",
        imgurl:
            "https://images.unsplash.com/photo-1679198315253-88c0b0b3f4e8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60"),
    Users(
        name: "Nirmal George Mathew",
        index: 9,
        email: "gangu4@gmail.com",
        imgurl:
            "https://images.unsplash.com/photo-1679198315253-88c0b0b3f4e8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60"),
    Users(
        name: "Alexa Mohammed",
        email: "gangu3@gmail.com",
        index: 10,
        imgurl:
            "https://images.unsplash.com/photo-1679198315253-88c0b0b3f4e8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60"),
    Users(
        name: "CJ Magellan",
        index: 11,
        email: "gangu1@gmail.com",
        imgurl:
            "https://images.unsplash.com/photo-1679198315253-88c0b0b3f4e8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60"),
    Users(
        name: "Dagis patekar",
        index: 12,
        email: "gangu1@gmail.com",
        imgurl:
            "https://images.unsplash.com/photo-1679198315253-88c0b0b3f4e8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60"),
  ];
  List<Users> newUserList = [];
  List<Users> addedUsersList = [];
  List<String> addedEmail = [];
  var numOfPeopleAdded = 0;
  bool showStack = false;



  void showInviteStack() {
    showStack = true;
    notifyListeners();
  }

  void closeInviteStack() {
    showStack = false;
    notifyListeners();
  }
}

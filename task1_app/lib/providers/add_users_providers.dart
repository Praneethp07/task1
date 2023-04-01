import 'package:flutter/material.dart';
import 'package:task1_app/models/userdetails.dart';

class AddUsers with ChangeNotifier {

  
  List<Users> users = [
    Users(
        name: "Gangu Barman Shajahan",
        email: "gangu13@gmail.com",
        imgurl:
            "https://images.unsplash.com/photo-1679198315253-88c0b0b3f4e8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60"),
    Users(
        name: "Nirmal George Mathew",
        email: "gangu12@gmail.com",
        imgurl:
            "https://images.unsplash.com/photo-1679198315253-88c0b0b3f4e8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60"),
    Users(
        name: "Shreyas C",
        email: "gangu11@gmail.com",
        imgurl:
            "https://images.unsplash.com/photo-1679198315253-88c0b0b3f4e8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60"),
    Users(
        name: "Nirmal George Mathew",
        email: "gangu10@gmail.com",
        imgurl:
            "https://images.unsplash.com/photo-1679198315253-88c0b0b3f4e8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60"),
    Users(
        name: "Alexa Mohammed",
        email: "gangu9@gmail.com",
        imgurl:
            "https://images.unsplash.com/photo-1679198315253-88c0b0b3f4e8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60"),
    Users(
        name: "CJ Magellan",
        email: "gangu8@gmail.com",
        imgurl:
            "https://images.unsplash.com/photo-1679198315253-88c0b0b3f4e8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60"),
    Users(
        name: "Dagis patekar",
        email: "gangu7@gmail.com",
        imgurl:
            "https://images.unsplash.com/photo-1679198315253-88c0b0b3f4e8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60"),
    Users(
        name: "Nirmal George Mathew",
        email: "gangu6@gmail.com",
        imgurl:
            "https://images.unsplash.com/photo-1679198315253-88c0b0b3f4e8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60"),
    Users(
        name: "Shreyas C",
        email: "gangu5@gmail.com",
        imgurl:
            "https://images.unsplash.com/photo-1679198315253-88c0b0b3f4e8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60"),
    Users(
        name: "Nirmal George Mathew",
        email: "gangu4@gmail.com",
        imgurl:
            "https://images.unsplash.com/photo-1679198315253-88c0b0b3f4e8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60"),
    Users(
        name: "Alexa Mohammed",
        email: "gangu3@gmail.com",
        imgurl:
            "https://images.unsplash.com/photo-1679198315253-88c0b0b3f4e8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60"),
    Users(
        name: "CJ Magellan",
        email: "gangu1@gmail.com",
        imgurl:
            "https://images.unsplash.com/photo-1679198315253-88c0b0b3f4e8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60"),
    Users(
        name: "Dagis patekar",
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

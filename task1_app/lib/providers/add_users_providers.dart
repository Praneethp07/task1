import 'package:flutter/material.dart';
import 'package:task1_app/models/userdetails.dart';

class AddUsers with ChangeNotifier {
  List<Users> users = [
    Users(
        name: "Gangu Barman Shajahan",
        index: 0,
        selected: false,
        email: "gangu13@gmail.com",
        imgurl:
            "https://images.unsplash.com/photo-1679198315253-88c0b0b3f4e8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60"),
    Users(
        name: "Nirmal George Mathew",
        index: 1,
        selected: false,
        email: "gangu12@gmail.com",
        imgurl:
            "https://images.unsplash.com/photo-1679198315253-88c0b0b3f4e8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60"),
    Users(
        name: "Shreyas C",
        index: 2,
        selected: false,
        email: "gangu11@gmail.com",
        imgurl:
            "https://images.unsplash.com/photo-1679198315253-88c0b0b3f4e8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60"),
    Users(
        name: "Nirmal George Mathew",
        index: 3,
        selected: false,
        email: "gangu10@gmail.com",
        imgurl:
            "https://images.unsplash.com/photo-1679198315253-88c0b0b3f4e8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60"),
    Users(
        name: "Alexa Mohammed",
        index: 4,
        selected: false,
        email: "gangu9@gmail.com",
        imgurl:
            "https://images.unsplash.com/photo-1679198315253-88c0b0b3f4e8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60"),
    Users(
        name: "CJ Magellan",
        index: 5,
        selected: false,
        email: "gangu8@gmail.com",
        imgurl:
            "https://images.unsplash.com/photo-1679198315253-88c0b0b3f4e8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60"),
    Users(
        name: "Dagis patekar",
        index: 6,
        selected: false,
        email: "gangu7@gmail.com",
        imgurl:
            "https://images.unsplash.com/photo-1679198315253-88c0b0b3f4e8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60"),
    Users(
        name: "Nirmal George Mathew",
        index: 7,
        selected: false,
        email: "gangu6@gmail.com",
        imgurl:
            "https://images.unsplash.com/photo-1679198315253-88c0b0b3f4e8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60"),
    Users(
        name: "Shreyas C",
        index: 8,
        selected: false,
        email: "gangu5@gmail.com",
        imgurl:
            "https://images.unsplash.com/photo-1679198315253-88c0b0b3f4e8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60"),
    Users(
        name: "Nirmal George Mathew",
        index: 9,
        selected: false,
        email: "gangu4@gmail.com",
        imgurl:
            "https://images.unsplash.com/photo-1679198315253-88c0b0b3f4e8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60"),
    Users(
        name: "Alexa Mohammed",
        email: "gangu3@gmail.com",
        index: 10,
        selected: false,
        imgurl:
            "https://images.unsplash.com/photo-1679198315253-88c0b0b3f4e8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60"),
    Users(
        name: "CJ Magellan",
        index: 11,
        selected: false,
        email: "gangu1@gmail.com",
        imgurl:
            "https://images.unsplash.com/photo-1679198315253-88c0b0b3f4e8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60"),
    Users(
        name: "Dagis patekar",
        index: 12,
        selected: false,
        email: "gangu1@gmail.com",
        imgurl:
            "https://images.unsplash.com/photo-1679198315253-88c0b0b3f4e8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60"),
  ];
  List<Users> newUserList = [];
  List<Users> addedUsersList = [];
  var numOfPeopleAdded = 0;
  bool showStack = false;
  String buttonText = "Add";
  Color buttonColor = const Color(0xFFFF0000);
  int addedCount = 0;
  // ignore: prefer_for_elements_to_map_fromiterable
  Map<int, bool> mp = {};
  void Assign() {
    newUserList = users;
    notifyListeners();
  }

  void addClick(int index) {
    if (buttonText == 'Add') {
      addedUsersList.add(newUserList[newUserList[index].index]);
      buttonText = 'Added';
      buttonColor = Colors.grey.shade800;
    } else {
      addedUsersList.remove(newUserList[newUserList[index].index]);
      buttonText = 'Add';
      buttonColor = const Color(0xffff0000);
    }
    notifyListeners();
  }

  void showInviteStack() {
    showStack = true;
    notifyListeners();
  }

  void closeInviteStack() {
    showStack = false;
    notifyListeners();
  }
}

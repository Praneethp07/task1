import 'package:flutter/material.dart';

class Users {
  String name;
  String email;
  String imgurl;
  int index;
  bool selected;
  Users(
      {required this.name,
      this.email = '',
      required this.imgurl,
      required this.index,
      required this.selected});
}

import 'package:flutter/material.dart';

class User {
  String name;
  String image;

  User(this.name, this.image);
}

final List<User> users = [
  User("Big bro", "lib/images/bigBro.png"),
  User("Boity", "lib/images/Boity.png"),
  User("Jessie", "lib/images/Jessie.png"),
  User("Martin", "lib/images/Martin.png"),
  User("Olly", "lib/images/Olly.png"),
  User("Sis", "lib/images/Sis.png")
];

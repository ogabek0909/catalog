import 'package:flutter/material.dart';

class CreateUser with ChangeNotifier {
  final String firstName;
  final String lastName;
  final String fatherName;
  final String phoneNumber;
  final String email;
  final Social social;
  CreateUser({
    required this.firstName,
    required this.email,
    required this.lastName,
    required this.fatherName,
    required this.phoneNumber,
    required this.social,
  });
}

class Social {
  final String whatsApp;
  final String youTube;
  final String facebook;
  final String instagram;
  final String telegram;
  final String webSite;
  Social({
    this.facebook = '',
    this.youTube = '',
    this.whatsApp = '',
    this.telegram = '',
    this.webSite = '',
    this.instagram = '',
  });
}

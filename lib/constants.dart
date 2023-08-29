import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tiktok_app/controllers/auth_controller.dart';
import 'package:tiktok_app/views/screens/add_video_screen.dart';
import 'package:tiktok_app/views/screens/search_screen.dart';
import 'package:tiktok_app/views/screens/video_screen.dart';

List pages = [
  VideoScreen(),
  SearchScreen(),
  const AddVideoScreen(),
  Text('Messages Screen'),
  Text('Profile Screen'),
];

// COLORS
const backgroundColor = Colors.black;
var buttonColor = Colors.red[400];
const borderColor = Colors.grey;

// Gradient
const Color gradient1 = Color.fromRGBO(24, 63, 215, 1.0);
const Color gradient2 = Color.fromRGBO(236, 156, 9, 1.0);
const Color gradient3 = Color.fromRGBO(50, 225, 11, 1.0);

const Color gradient4 = Color.fromRGBO(8, 232, 232, 1.0);
const Color gradient5 = Color.fromRGBO(145, 9, 236, 1.0);
const Color gradient6 = Color.fromRGBO(200, 229, 7, 1.0);

// Firebase
var firebaseAuth = FirebaseAuth.instance;
var firebaseStorage = FirebaseStorage.instance;
var firestore = FirebaseFirestore.instance;

// Controller
var authController = AuthController.instance;

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tiktok_app/controllers/auth_controller.dart';
import 'package:tiktok_app/views/screens/add_video_screen.dart';
import 'package:tiktok_app/views/screens/profile_screen.dart';
import 'package:tiktok_app/views/screens/search_screen.dart';
import 'package:tiktok_app/views/screens/video_screen.dart';

List pages = [
  VideoScreen(),
  null,
  SearchScreen(),
  const AddVideoScreen(),
  const Text('Messages Screen'),
  ProfileScreen(uid: authController.user.uid),
];

// Firebase

var firebaseAuth = FirebaseAuth.instance;
var firebaseStorage = FirebaseStorage.instance;
var firestore = FirebaseFirestore.instance;

// Controller

var authController = AuthController.instance;

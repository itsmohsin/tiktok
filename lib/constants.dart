import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:tiktok/controllers/auth_contorller.dart';
import 'package:tiktok/views/screens/add_video_screen.dart';

// Pages:
const pages = [
  Text('Home Screen'),
  Text('Search Screen'),
  AddVideoScreen(),
  Text('Message Screen'),
  Text('Profile Screen'),
];

// Colors
const backgroundColor = Colors.black;
var buttonColor = Colors.red[400];
const borderColor = Colors.grey;

// Firebase
var firebaseAuth = FirebaseAuth.instance;
var firebaseStorage = FirebaseStorage.instance;
var firestore = FirebaseFirestore.instance;

// Controller
var authController = AuthController.instance;

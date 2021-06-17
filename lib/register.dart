import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart'; show get;
import 'dart:convert';

class _Register extends State<Register> {
  final formKey = GlobalKey<FormState>();
  String name, email, password;

  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  Widget nameTextFormField() {
    void uplodaValueToFirebase() async {
      print('name = $name, email = $email, password = $password');
      final FirebaseUser firebaseUser = await firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((user) {
        printer('SignUp Success');
      }).catchError((String error) {
        print('Error ==> $error');
      });
    }
  }
}

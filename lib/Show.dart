import 'dart:html';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class _Show extends state<Show> {
  FirebaseDatabase firebaseDatabase = FirebaseDatabase.instance;

  @Override
  void initState() {
    super.initState();
    readData();
  }

  void readData() async {
    print('readData Work!!!');

    DatabaseReference databaseReference =
    firebaseDatabase.reference().child('Test');
    await databaseReference.once().then((DataSnapshot dataSnapshop) {
      print('Data ==> ${dataSnapshot.value}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[500],
        title: Text(Show),
      ),
      body: Text('body'),
    );
  }
}

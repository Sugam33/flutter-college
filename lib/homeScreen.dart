import 'dart:developer';

import 'package:college/login/loginScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    log(count.toString());
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter"),
      ),
      body: Column(
        children: [
          Text("Count value is: $count"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      count++;
                    });
                    log(count.toString());
                  },
                  child: Text("Add")), // add ko button ho yo
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      count--;
                    });
                    log(count.toString());
                  },
                  child: Text("Subtract"))
            ],
          )
        ],
      ),
    );
  }
}

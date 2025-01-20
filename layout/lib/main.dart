import 'dart:ffi';

import 'package:flutter/material.dart';

const String appName = "Exo Layout";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    double sWidth = MediaQuery.sizeOf(context).width;
    double sHeight =
        MediaQuery.sizeOf(context).height - 80; // 80 = AppBar Height

    return MaterialApp(
      title: appName,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text(appName)),
        ),
        body: Container(
          color: Colors.greenAccent,
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    color: Colors.blue,
                    height: sHeight / 4,
                    width: sWidth / 2,
                  ),
                  Container(
                    color: Colors.red,
                    height: sHeight / 4,
                    width: sWidth / 2,
                  )
                ],
              ),
              Container(
                color: Colors.green,
                width: double.infinity,
                height: sHeight / 4,
              ),
              Row(
                children: [
                  Container(
                    color: Colors.cyan,
                    height: sHeight / 4,
                    width: sWidth / 3,
                  ),
                  Container(
                    color: Colors.black,
                    height: sHeight / 4,
                    width: sWidth / 3,
                  ),
                  Column(
                    children: [
                      Container(
                        width: sWidth / 3,
                        height: sHeight / 4 / 4,
                        color: Colors.yellow,
                      ),
                      Container(
                        width: sWidth / 3,
                        height: sHeight / 4 / 4,
                        color: Colors.pink,
                      ),
                      Container(
                        width: sWidth / 3,
                        height: sHeight / 4 / 4,
                        color: Colors.purple,
                      ),
                      Container(
                        width: sWidth / 3,
                        height: sHeight / 4 / 4,
                        color: Colors.deepOrange,
                      ),
                    ],
                  )
                ],
              ),
              Container(
                color: Colors.brown,
                width: double.infinity,
                height: sHeight / 4,
              )
            ],
          ),
        ),
      ),
    );
  }
}

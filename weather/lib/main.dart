import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather/provider/provider.dart';

import 'Screens/HomePage.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) {
        return Weatherdata();
      },
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Provider.of<Weatherdata>(context).wethhher == null
               ? Colors.blue
              : Provider.of<Weatherdata>(context).wethhher!.getithemecolor()),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

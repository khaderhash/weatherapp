import 'package:flutter/material.dart';
import '../model/weatherob.dart';
import '../services/geatingserv.dart';

class searchpage extends StatelessWidget {
  searchpage({super.key});
  String? cityselect;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: TextField(
            cursorColor: Colors.grey,
            onSubmitted: (value) async {
              cityselect = value;
              services kh = services();
              weathermodel detal = await kh.getweather(namecity: cityselect!);
              print("$detal");
            },
            decoration: const InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 24, vertical: 32),
                label: Text("Search", style: TextStyle(fontSize: 18)),
                labelStyle: TextStyle(color: Colors.grey),
                focusColor: Colors.grey,
                suffixIcon: Icon(
                  color: Colors.grey,
                  Icons.search,
                  size: 36,
                ),
                hintText: "select city",
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder:
                    OutlineInputBorder(borderSide: BorderSide(color: Colors.grey))),
          ),
        )),
      ),
    );
  }
}

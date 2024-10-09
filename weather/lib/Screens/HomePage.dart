import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});
String? cityselected;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Welcom👋",
            style: TextStyle(fontSize: 22),
          ),
          centerTitle: true,
          backgroundColor: Colors.grey,
        ),
        body: Center(child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: TextField(
            onSubmitted: (value) {
              value= cityselected!;
            },
            decoration:  InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 24,vertical: 32),
              label: Text("Search",style: TextStyle(fontSize: 18)),
              focusColor: Colors.grey,
              suffixIcon: Icon(Icons.search,size: 36,),
              hintText: "select city",
              border: OutlineInputBorder()
            ),
          ),
        )),
      ),
    );
  }
}

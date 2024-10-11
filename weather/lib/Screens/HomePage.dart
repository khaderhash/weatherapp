import 'package:flutter/material.dart';
import 'package:weather/Screens/SearchPage.dart';
import 'package:weather/model/weatherob.dart';
import 'package:weather/services/geatingserv.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});
  String? cityselect;
  weathermodel? weatherpr;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  child: Icon(
                    Icons.search,
                    size: 32,
                  ),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return searchpage();
                      },
                    ));
                  },
                ),
              )
            ],
            title: Text(
              "Welcom👋",
              style: TextStyle(fontSize: 22),
            ),
            centerTitle: true,
            backgroundColor: Colors.grey,
          ),
          body: weatherpr != null
              ? const Center(
                  child: Text(
                    "NOTHING TO WATCH , SEARCH NOW",
                    style: TextStyle(fontSize: 22),
                  ),
                )
              : Container(
            color: Colors.red[200],
                  width: double.infinity,
                  height: double.infinity,
                  child: const Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Spacer(flex: 3),
                          Text(
                            "city",
                            style: TextStyle(
                                fontSize: 32, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "update at : 2323 pm",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Spacer(flex: 1),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.search, size: 60),
                              Text(
                                "30",
                                style: TextStyle(
                                    fontSize: 26, fontWeight: FontWeight.bold),
                              ),
                              Column(
                                children: [
                                  Text(
                                    "MAX:22",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "MIN:22",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ],
                          ),
                          Spacer(flex: 1),
                          Text(
                            "weather",
                            style: TextStyle(
                                fontSize: 32, fontWeight: FontWeight.bold),
                          ),
                          Spacer(flex: 5)
                        ]),
                  ),
                )),
    );
  }
}

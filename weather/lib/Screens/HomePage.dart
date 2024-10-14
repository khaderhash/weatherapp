import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather/Screens/SearchPage.dart';
import 'package:weather/model/weatherob.dart';
import 'package:weather/provider/provider.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String? cityselect;

  void updateui() {
    setState(() {});
  }

  weathermodel? weatherr;
  @override
  Widget build(BuildContext context) {
    weatherr = Provider.of<Weatherdata>(context).wethhher;
    return Scaffold(
        appBar: AppBar(
          actions: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: GestureDetector(
                child: Icon(
                  Icons.search,
                  size: 32,
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return searchpage(
                        ubdateui: updateui,
                      );
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
          // backgroundColor: Colors.grey,
        ),
        body: weatherr == null
            ? const Center(
                child: Text(
                  "NOTHING TO WATCH , SEARCH NOW",
                  style: TextStyle(fontSize: 22),
                ),
              )
            : Container(
                // color: Colors.red[200],
                width: double.infinity,
                height: double.infinity,
                child: Center(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Spacer(flex: 3),
                        Text(
                          Provider.of<Weatherdata>(context).city!,
                          // Provider.of<Weatherdata>(context).city??'nothing',
                          style: TextStyle(
                              fontSize: 32, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "update at : ${weatherr!.date}",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Spacer(flex: 1),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                                height: 120,
                                width: 120,
                                child: Image.asset(weatherr!.getimage())),
                            Text(
                              weatherr!.temp.toInt().toString(),
                              style: TextStyle(
                                  fontSize: 26, fontWeight: FontWeight.bold),
                            ),
                            Column(
                              children: [
                                Text(
                                  "MAX:${weatherr!.maxtemp.toInt()}",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Min:${weatherr!.maxtemp.toInt()}",
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
                          weatherr!.weatherstatename,
                          style: TextStyle(
                              fontSize: 32, fontWeight: FontWeight.bold),
                        ),
                        Spacer(flex: 5)
                      ]),
                ),
              ));
  }
}

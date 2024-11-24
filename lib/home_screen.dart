import 'dart:math';

import 'package:bascetball_points_counter_app/points.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget{
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int teamAPoints = 0;

  int teamBPoints = 0;

  void addPoint(){}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: const Text("Points Counter", 
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white, 
          fontSize: 30,
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  const Text("Team A", style: TextStyle(fontSize: 35),),
                  Text("$teamAPoints", style: const TextStyle(
                    fontSize: 150, 
                    fontWeight: FontWeight.w400,
                    ),
                  ),
                  Points(title: "Add 1 Point", onPressed: () {
                    setState(() {
                      teamAPoints ++;
                    });
                  },
                ),
                  const SizedBox(height: 10,),
                  Points(title: "Add 2 Point", onPressed: () {
                    setState(() {
                      teamAPoints +=2;
                    });
                  },
                ),
                  const SizedBox(height: 10,),
                  Points(title: "Add 3 Point", onPressed: () {
                    setState(() {
                      teamAPoints +=3;
                    });
                  },
                ),
                ],
              ),
              const SizedBox(
                height: 420,
                child: VerticalDivider(
                  thickness: 2,
                  width: 10,
                  color: Colors.black38,
                  ),
                ),
              Column(
                children: [
                  const Text("Team B", style: TextStyle(fontSize: 35),),
                  Text("$teamBPoints", style: const TextStyle(
                    fontSize: 150, 
                    fontWeight: FontWeight.w400,
                    ),
                  ),
                  Points(title: "Add 1 Point" ,onPressed: () {
                    setState(() {
                      teamBPoints++;
                    });
                  },
                ),
                  const SizedBox(height: 10,),
                  Points(title: "Add 2 Point", onPressed: () {
                    setState(() {
                      teamBPoints +=2;
                    });
                  },
                ),
                 const SizedBox(height: 10,),
                  Points(title: "Add 3 Point", onPressed: () {
                    setState(() {
                      teamBPoints +=3;
                    });
                  },
                ),
                ],
              ),
            ],
          ),
          const Spacer(flex: 2,),
          Points(title: "Reset", onPressed: (){
            setState(() {
              teamAPoints =0;
              teamBPoints =0;
            });
          },
        ),
          const Spacer(flex: 2,)
        ],
      ),
    );
  }
}
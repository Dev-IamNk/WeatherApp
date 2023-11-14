import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:learning/logic/conditions.dart';
class HomePage extends StatefulWidget {
  final weatherdata;
  const HomePage({ required this.weatherdata,super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var current =jsonDecode(widget.weatherdata);
    var currentMain=current['weather'][0]['main'];
    var currentDes=current['weather'][0]['description'];
    var temp = current['main']['temp'];
    var city =current['name'];
    print(widget.weatherdata.toString());
   Condition condition= Condition();
   condition.GetCondition(currentMain.toString().toLowerCase());
   String con=condition.GetCondition(currentMain.toString().toLowerCase());
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        forceMaterialTransparency: true,
        shadowColor: Colors.transparent,
        title: Text("Weather App"),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage(condition.img),fit: BoxFit.cover,opacity: 0.5)
            ),
          ),
          ListView(
           children: [
             SizedBox(height: 10,),
             Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 SizedBox(height: 150,),
                 Center(child: Text(con.toUpperCase(),style: TextStyle(fontSize: 25),)),
                 SizedBox(height: 15,),
                 Text(temp.toString()+"°C",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                 SizedBox(height: 15,),
                 Text(city,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
               ],
             )
           ],
          ),
        ],
      ),
    );
  }
}

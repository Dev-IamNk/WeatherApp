import'package:flutter/material.dart';
import 'package:learning/pages/HomePage.dart';
import 'package:learning/services/api.dart';
import 'services/location.dart';
import 'dart:convert';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Load(),
    );
  }
}

class Load extends StatefulWidget {
  const Load({super.key});

  @override
  State<Load> createState() => _LoadState();
}


class _LoadState extends State<Load> {
    @override
  void initState(){
      locationGetter();
    super.initState();
  }
  locationGetter()async{
      Location location = Location();
     await  location.getLocation();
      Api api =await Api(lat: location.lat, lon: location.lon);
      var w=await api.getWeather();
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomePage(weatherdata: w,)));
      return w;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child:CircularProgressIndicator(color: Colors.white,)
      ),
    );
  }
}

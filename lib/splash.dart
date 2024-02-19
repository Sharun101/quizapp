import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quizapp/questions.dart';

class Splash extends StatefulWidget {
  const Splash ({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => Splash_State();
}



class Splash_State extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds:3),  () {
   Navigator.push(context,MaterialPageRoute(builder: (Context)=>Questions(),));
  });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
          title:Text("GeeksforGeeks"),
          backgroundColor:Colors.green
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
            children:<Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),

                // Image.network(src)
                child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZHsWE0PfGaEszqgof2muFFq9BfKdrBLvyeg&usqp=CAU"),

              ),

            ]
        ),
      ),
    );

  }
}

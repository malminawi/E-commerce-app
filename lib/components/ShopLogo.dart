import 'package:flutter/material.dart';

class shopName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //  color: Colors.black12,
        height: 50.0,

        child: Padding(

          padding: const EdgeInsets.only(left: 100, right: 10, ),
          child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
           Text("Name of the app", style: TextStyle(fontStyle: FontStyle.italic, fontSize: 22, fontFamily: "Rock Salt",) ),
            ],
          ),
        ),




    );
    }
    }
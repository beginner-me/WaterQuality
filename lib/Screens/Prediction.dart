import 'dart:ui';

import 'package:flutter/material.dart';
class Predict extends StatefulWidget {
  const Predict({Key? key}) : super(key: key);

  @override
  State<Predict> createState() => _PredictState();
}

class _PredictState extends State<Predict> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Scrollbar(
          thickness: 54,
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKREHLWVaxRVBP1prR1pTqmO2ewLgaLAcxFA&usqp=CAU"),
                    fit: BoxFit.cover)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKREHLWVaxRVBP1prR1pTqmO2ewLgaLAcxFA&usqp=CAU"),
                          fit: BoxFit.cover)

                  ),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10,sigmaY: 10),
                    child: Container(
                      color: Colors.grey.withOpacity(0.1),
                      alignment: Alignment.center,
                    ),
                  ),
                ),
              ],
            ),

          ),
        ),
      ),
    );
  }
}

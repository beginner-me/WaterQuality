import 'dart:convert';
import 'dart:developer';
import 'dart:ui';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:waterqualityfinal/Screens/Prediction.dart';

import '../Utilities/get_prediction.dart';
class Data extends StatefulWidget {
  const Data({Key? key}) : super(key: key);

  @override
  State<Data> createState() => _DataState();
}


Future<String> askPrediction() async {

  final response = await http.post(
    Uri.parse('https://water-api.onrender.com/predict'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, double>{
      "ph": 6,
      "Hardness": 65,
      "Solids": 87,
      "Chloramines":98,
      "Sulfate": 09,
      "Conductivity": 100,
      "Organic_carbon": 87,
      "Trihalomethanes": 98 ,
      "Turbidity": 90,
    }),
  );

  if (response.statusCode == 200) {
    return GetPrediction.fromJson(jsonDecode(response.body)).result;
  } else {
    log('Request failed with status: ${response.statusCode}.');
    throw Exception('Failed to fetch');
  }
}


class _DataState extends State<Data> {

  TextEditingController ph  = TextEditingController();
  TextEditingController Hardness  = TextEditingController();
  TextEditingController Solids  = TextEditingController();
  TextEditingController Sulphates  = TextEditingController();
  TextEditingController Chloramines  = TextEditingController();
  TextEditingController Conductivity  = TextEditingController();
  TextEditingController Organic_carbon  = TextEditingController();
  TextEditingController Trihalomethanes  = TextEditingController();
  TextEditingController Turbidity  = TextEditingController();

  GetPrediction pred1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
                Container(
                  child: TextField(
                    controller: ph,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                     decoration: InputDecoration(
                      hintText: "pH",
                      icon: new Icon(Icons.thermostat),
                      hintStyle: TextStyle(
                        color: Colors.white70
                      )
                    ),
                  ),


                ),
                Container(
                  child: TextField(
                    controller: Hardness,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    decoration: InputDecoration(
                        hintText: "Hardness",
                        icon: new Icon(Icons.soap),
                        hintStyle: TextStyle(
                            color: Colors.white70
                        )
                    ),
                  ),


                ),
                Container(
                  child: TextField(
                    controller: Solids,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    decoration: InputDecoration(
                        hintText: "Solids",
                        icon: new Icon(Icons.do_not_disturb_on_total_silence_outlined),
                        hintStyle: TextStyle(
                            color: Colors.white70
                        )
                    ),
                  ),


                ),
                Container(
                  child: TextField(
                    controller: Sulphates,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    decoration: InputDecoration(
                        hintText: "Sulphates",
                        icon: new Icon(Icons.thirteen_mp),
                        hintStyle: TextStyle(
                            color: Colors.white70
                        )
                    ),
                  ),


                ),
                Container(
                  child: TextField(
                    controller: Chloramines,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    decoration: InputDecoration(
                        hintText: "Chloramines",
                        icon: new Icon(Icons.add_chart_outlined),
                        hintStyle: TextStyle(
                            color: Colors.white70
                        )
                    ),
                  ),
                ),
                Container(
                  child: TextField(
                    controller: Conductivity,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    decoration: InputDecoration(
                        hintText: "Conductivity",
                        icon: new Icon(Icons.account_tree_outlined),
                        hintStyle: TextStyle(
                            color: Colors.white70
                        )
                    ),
                  ),
                ),
                Container(
                  child: TextField(
                    controller: Organic_carbon,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    decoration: InputDecoration(
                        hintText: "Organic_carbon",
                        icon: new Icon(Icons.hdr_strong_sharp),
                        hintStyle: TextStyle(
                            color: Colors.white70
                        )
                    ),
                  ),


                ),
                Container(
                  child: TextField(
                    controller: Trihalomethanes,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    decoration: InputDecoration(
                        hintText: "Trihalomethanes",
                        icon: new Icon(Icons.thermostat),
                        hintStyle: TextStyle(
                            color: Colors.white70
                        )
                    ),
                  ),
                ),
                Container(

                  child: TextField(
                    controller: Turbidity,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    decoration: InputDecoration(
                        hintText: "Turbidity",
                        icon: new Icon(Icons.backpack_outlined),
                        hintStyle: TextStyle(
                            color: Colors.white70
                        )
                    ),
                  ),
                ),
                Container(
                  child: ElevatedButton(

                      onPressed: ()async {

                        String pred = await askPrediction();
                        setState(() {
                           var pred1 = pred as GetPrediction;



                        });
                      }, child: Text("Predict")),
                ),
                SizedBox(height: 28,),
                pred1 == null ? Container(
                  child: Text("No prediction"),
                ):
                    Text(pred1.toString()!)

                ],
            ),

          ),
        ),
      ),
    );
  }
}

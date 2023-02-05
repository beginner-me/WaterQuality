import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:waterqualityfinal/Screens/Login.dart';
import 'package:waterqualityfinal/Screens/Register.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbl6RcugodNgB6x1sPzGTrWZl785Vax5DJtw&usqp=CAU"),
              fit: BoxFit.cover,
            )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbl6RcugodNgB6x1sPzGTrWZl785Vax5DJtw&usqp=CAU"),
                      fit: BoxFit.cover)
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 5,sigmaY:5 ),
                  child: Container(
                    color: Colors.grey.withOpacity(0.1),
                    alignment: Alignment.center,

                  ),
                ),

              ),
              Container(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 50),
                child: Text("PureHydro",textAlign:TextAlign.center,style: TextStyle(fontSize: 40)),
              ),

              Container(
                padding: const EdgeInsets.fromLTRB(20,10, 20,20),
                child: Icon(Icons.water_drop_outlined,
                size:90.0,color: Colors.black45),
              ),
              Container(
                  height: 70,
                  padding: const EdgeInsets.all(20),
                  child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black45,
                        minimumSize: const Size.fromHeight(50),
                        shadowColor: Color.alphaBlend(CupertinoColors.systemBlue, CupertinoColors.black),
                        ),
                      child: const Text('Login'),
                      onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context)=> const Login()),
                          );
                      },
                )
              ),
              Container(
                  height: 70,
                  padding: const EdgeInsets.all(20),
                  child: ElevatedButton(

                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black45,
                      minimumSize: const Size.fromHeight(50),
                      shadowColor: Color.alphaBlend(CupertinoColors.systemBlue, CupertinoColors.black),
                    ),
                    child: const Text('Register'),
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context)=> const Register()),
                      );
                    },
                  )

              )

            ],
          ),

        ),
      ),
    );
  }
}

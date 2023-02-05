import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:waterqualityfinal/Screens/Data.dart';
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}
final _auth = FirebaseAuth.instance;

class _LoginState extends State<Login> {
  String message = " ";
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage("https://thumbs.dreamstime.com/b/water-drop-blue-color-gradient-background-close-up-48201740.jpg"),
                fit: BoxFit.cover)
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage("https://images.pexels.com/photos/932320/pexels-photo-932320.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                        fit: BoxFit.cover)
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10,sigmaY:10 ),
                  child: Container(
                    color: Colors.grey.withOpacity(0.1),
                    alignment: Alignment.center,

                  ),
                ),

              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                child: Text("Login",style: TextStyle(color: Colors.white,fontSize: 50),),
              ),
              Container(
                padding:EdgeInsets.fromLTRB(10, 0, 10, 10),
                child: TextField(
                  controller: emailController,

                  style: TextStyle(
                    color: Colors.white70,
                    fontWeight: FontWeight.bold,
                    decorationColor: Colors.white
                  ),
                  decoration: InputDecoration(
                    hintText: "E-mail",
                    icon: new Icon(Icons.mail),
                    hintStyle: TextStyle(
                      color: Colors.white70
                    ),
                    border: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(Radius.circular(90))
                    )
                  ),
                ),
              ),
              Container(
                padding:EdgeInsets.fromLTRB(10, 0, 10, 10),
                child: TextField(
                  controller: passwordController,

                  style: TextStyle(
                    color: Colors.white70,
                    fontWeight: FontWeight.bold
                  ),
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Password",
                      icon: new Icon(Icons.key_sharp),
                      hintStyle: TextStyle(
                        color: Colors.white70

                      ),
                      border: OutlineInputBorder(
                          borderRadius: const BorderRadius.all(Radius.circular(100))
                      )
                  ),
                ),

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
                    onPressed: () async{

                      setState(() {
                        message = " ";
                      });
                      try{
                        final user = await _auth.signInWithEmailAndPassword(
                            email: emailController.text.trim(),
                            password: passwordController.text.trim());
                        if(user!=null)
                        {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context)=> const Data()),
                          );
                        }

                      }
                      catch(e)
                      {
                        print(e.toString());
                        setState(() {
                          message = e.toString();
                        });
                      }
                    },
                  )
              ),
            ],
          ),

        ),
      ),
    );
  }
}

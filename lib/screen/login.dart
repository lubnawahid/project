


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/screen/registration.dart';

import 'homescreen.dart';

class Login extends StatefulWidget {
  const Login({ Key? key }) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text('Welcome Page'),
        //   centerTitle: true,
        // ),
        body: Center(
        child: SingleChildScrollView(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

           Image.asset(
          'images/gray-chair-living-room-with-copy-space.jpg',
          width: 350.0,
          height: 300.0,
    ),


              Align(alignment: Alignment.center,
                child: Text('welcome back!',style: TextStyle(color:Colors.black,fontSize: 17),textAlign: TextAlign.center,),

              ),

              Padding(
                padding: const EdgeInsets.all(8),
                child: TextField(

                  decoration: InputDecoration(
                    prefixIcon:Icon(Icons.person),
                    labelText: "username",
                    hintText: "username",
                    border: OutlineInputBorder(borderRadius:BorderRadius.circular(30)),

                  ),


                ),
              ),SizedBox(height: 20),

              Padding(
                padding: const EdgeInsets.all(8),
                child: TextField(

                  decoration: InputDecoration(

                    prefixIcon: Icon(Icons.lock),
                    labelText: "password",

hintText: "password",

                    border:
                    OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),

                  ),

                ),
              ),
              SizedBox(height: 30,),

              ElevatedButton(
                child: Text("Login",style: TextStyle(color: Colors.white),),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Homescreen()));
                },

                style:ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),primary: Colors.red,fixedSize: Size(300, 50)),

              ),
              SizedBox(height: 30.0,),
              Row(
                children: [
                  const Text('Does not have an account?',style:TextStyle(fontSize: 16),),
                  SizedBox(width: 10,),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Registration()));
                  },
                    child: const Text('Register Here',style: TextStyle(color:Colors.red,fontSize: 16),),
                  ),

                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),



            ],

          ),
        )
        )
    );
  }
}


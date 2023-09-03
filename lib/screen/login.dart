


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/screen/registration.dart';

class Login extends StatefulWidget {
  const Login({ Key? key }) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body:Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            Text("LOGIN",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight:FontWeight.bold),

            ),
            SizedBox(height: 20.0,),
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



                  border:
                  OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),

                ),

              ),
            ),

            ElevatedButton(
              child: Text("Login",style: TextStyle(color: Colors.white),),
              onPressed: () {

              },
              // if (pwdController.text == user) {
              //  Navigator.push(
              //  context, MaterialPageRoute(builder: (context) => homescreen()));
              // } else if (pwdController.text == ta) {
              // Navigator.push(
              //   context,
              // MaterialPageRoute(builder: (context) => agencyhomescreen()));
              // }else{
              //  print("error");
              //  }
              // },
              style:ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),primary: Colors.blue,fixedSize: Size(300, 50)),

            ),
            SizedBox(height: 30.0,),
            Row(
              children: [
                const Text('Does not have an account?',style:TextStyle(fontSize: 16),),
                SizedBox(width: 10,),
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Registration()));
                },
                  child: const Text('Register Here',style: TextStyle(color:Colors.blue,fontSize: 16),),
                ),

              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),



          ],

        )

    );
  }
}


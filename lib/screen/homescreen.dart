import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:project/widgets/productswidgets.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Material(
          color: Colors.white,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(top: 50, left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: [
  Text("Our Products",
  style: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w500,
      color: Colors.black,

  ),




  ),

  Padding(padding: EdgeInsets.only(right: 20),
  child: InkWell(
      onTap: (){},
      child: Neumorphic(
style: NeumorphicStyle(
      shape: NeumorphicShape.flat,
      boxShape: NeumorphicBoxShape.roundRect(
        BorderRadius.circular(12),
      ),
color: Colors.white,
      intensity: 1,
),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Icon(Icons.search),
        ),
      ),
  ),

  )

],
                  ),
                  SizedBox(height: 20,),
                  TabBar(
                    indicatorSize: TabBarIndicatorSize.label,
                    indicatorColor: Colors.black,
                    labelColor: Colors.black,
                    isScrollable: true,
                    labelStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                    unselectedLabelColor: Colors.black38,
                    tabs: [
                      Tab(text: "Chairs",),
                      Tab(text: "Sofas",),
                      Tab(text: "Beds",),
                      Tab(text: "Tables",)
                    ],
                  ),
                  SizedBox(height: 20,),
SizedBox(height: 360,
child: TabBarView(
  children: [
ProductsWidgets(),
    ProductsWidgets(),
    ProductsWidgets(),
    ProductsWidgets(),


],

),
  ),
                  SizedBox(height: 10,),
                  SizedBox(height: 70,
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,

                      itemBuilder: (context,index){

                    return InkWell(
                      onTap: (){},
                      child: Neumorphic(
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.symmetric(vertical: 10,horizontal: 25),
                      ),
                    );
                  }),



                  ),

],
              ),
            ),
          )
      ),
    );
  }
}

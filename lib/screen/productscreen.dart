import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 50,left: 15,right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back,size: 30,),
                  ),
                  Text("Product",style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  color: Colors.black54,),
                  ),
                  Neumorphic(
                    style: NeumorphicStyle(
                      shape: NeumorphicShape.concave,
                      boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                      color: Colors.white,
                      intensity: 1,
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Icon(
                        Icons.favorite,
                        color: Colors.redAccent,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.all(5),
                child: Image.asset("images/Product1.jpg",
                fit: BoxFit.cover,
                height: 350,

                ),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Product Name",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(right:20),
                  child: Text("\2500",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),

                  ),)
                ],
              ),
              Text("Chairs",style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),),
              SizedBox(height: 20,),
              Text("Loree Ipsum is simply dummy text of the printing and typesetting industry.",style:
                TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              textAlign: TextAlign.justify,

              ),

            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 90,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),

          ),
          boxShadow:[ BoxShadow(
            color: Colors.black,
          blurRadius: 4,
          spreadRadius: 2,
          ),
        ]
        ),
        child: Center(
         child: Padding(
padding: EdgeInsets.only(top: 20),
child: Text('Add to cart',
    style: TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontSize: 18,
    ),
          ),
        ),
      ),
    ),
floatingActionButton: InkWell(
  onTap: (){},
  child: Container(
    padding: EdgeInsets.all(20),
    decoration: BoxDecoration(
      color: Colors.black,
      borderRadius: BorderRadius.circular(15),
      boxShadow: [
        BoxShadow(
          color: Colors.black,
          blurRadius: 4,
          spreadRadius: 4,
        )
      ]
    ),
    child: Icon(CupertinoIcons.cart_fill_badge_plus,
    color: Colors.white,
    size: 30,
    ),
  ),
),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

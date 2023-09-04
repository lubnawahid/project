
import 'package:flutter/cupertino.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:project/screen/productscreen.dart';

class CatProductCard extends StatefulWidget {
  int pIndex;
   CatProductCard(int index, {required this.pIndex});

  @override
  State<CatProductCard> createState() => _CatProductCardState();
}

class _CatProductCardState extends State<CatProductCard> {
  late final int pIndex;
  @override
  Widget build(BuildContext context) {
    return Padding(padding:
    EdgeInsets.all(8),
      child: Neumorphic(
      style: NeumorphicStyle(
        shape: NeumorphicShape.flat,
        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
        color: Colors.white,
        intensity: 1,
      ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder:(context) => ProductScreen()));

                },
                child:  Image.asset("images/Product${pIndex + 1}.jpg",
                height: 150,
                width: 150,

                ),

              ),
        SizedBox(height: 10,),
        Text("Product Name",
          style: TextStyle(
            fontSize: 20,

fontWeight: FontWeight.w500,
color:Colors.black45,
          ),
        ),
              SizedBox(height: 10,),
              Text("\2500",
                style: TextStyle(
                  fontSize: 20,

                  fontWeight: FontWeight.w500,
                  color:Colors.black45,
                ),
              ),
            ],
          ),
        ),

    )

    );
  }
}

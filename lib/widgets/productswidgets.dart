import 'package:flutter/cupertino.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class ProductsWidgets extends StatefulWidget {
  const ProductsWidgets({Key? key}) : super(key: key);

  @override
  State<ProductsWidgets> createState() => _ProductsWidgetsState();
}

class _ProductsWidgetsState extends State<ProductsWidgets> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(8),
            child: SizedBox(
              width: 270,
              child: Stack(
                children: [
                  SizedBox(
                    height: 320,
                    child: Neumorphic(
                      style: NeumorphicStyle(
                        shape: NeumorphicShape.flat,
                        boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(12)),
                        color: Colors.white,
                        intensity: 1,
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: InkWell(
                                onTap: () {},
                                child:
                                Image.asset('images/Product${index + 1}.jpg',
                                  height: 250,
                                  width: 250,
                                  fit: BoxFit.contain,


                                ),
                              ),
                            ),
                            Text("Product Name",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),


                            ),
                            SizedBox(height: 8,),
                            Text('\3500',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 25),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: InkWell(
                        onTap: (){},
                        child: Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                                BoxShadow(
                              color: Colors.black,
blurRadius: 4,
                            spreadRadius: 4,
                            ),
                          ],

                          ),
                          child: Icon(
                            CupertinoIcons.cart_fill_badge_plus,
                            color: Colors.white,
                            size: 25,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        }
    );
  }
}
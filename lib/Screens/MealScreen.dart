import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pro_ui_1_app/Component/CommentCard.dart';
import 'package:pro_ui_1_app/Component/IndCard.dart';

class MealScreen extends StatelessWidget {
  static const String id = '/MealScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: 300,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black54,
                        offset: Offset(1.0, 1.0), //(x,y)
                        blurRadius: 15.0,
                      ),
                    ],
                    image: DecorationImage(
                        image: AssetImage('assets/meal2.jpg'),
                        fit: BoxFit.cover),
                  ),
                ),
                SizedBox(
                  height: 55,
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 30,
                  ),
                  decoration: BoxDecoration(color: Colors.white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'About',
                            style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, ',
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.normal,
                          fontSize: 14,
                          height:
                              1.3, // the height between text, default is null
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Text(
                            'Ingredients',
                            style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  IndCard(),
                                  IndCard(),
                                  IndCard(),
                                  IndCard(),
                                ])),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Text(
                            'Comments',
                            style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CommentCard(),
                      CommentCard(),
                      CommentCard(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
              ],
            ),

            Positioned(
              top: 270,
              left: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black54,
                          offset: Offset(1.0, 1.0), //(x,y)
                          blurRadius: 15.0,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        'Breakfast',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Positioned(
              top: 270,
              right: 40,
              child: Container(
                padding: EdgeInsets.all(13),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.redAccent,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.redAccent,
                      offset: Offset(1.0, 1.0), //(x,y)
                      blurRadius: 15.0,
                    ),
                  ],
                ),
                child: Center(
                    child: Icon(
                      Icons.favorite,
                      size: 25,
                      color: Colors.white,
                    )

                ),
              ),
            ),

            Positioned(
              left: 40,
              top: 40,
              child: GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        offset: Offset(1.0, 1.0), //(x,y)
                        blurRadius: 50.0,
                      ),
                    ],
                  ),
                  child: Icon(
                    Icons.arrow_back_ios,
                    size: 35,
                    color: Colors.white,
                  ),
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}

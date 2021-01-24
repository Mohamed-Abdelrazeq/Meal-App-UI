import 'package:flutter/material.dart';
import 'package:pro_ui_1_app/Component/MealCard.dart';
import 'package:pro_ui_1_app/Component/OtherFoodCard.dart';

class MainScreen extends StatefulWidget {
  static const String id = '/';
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: (){
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 40,vertical: 30),
              child: Column(
                children: [
                  Container(
                    // padding: EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:[
                        Row(
                          // crossAxisAlignment: CrossAxisAlignment.baseline,
                          children: [
                            Text(
                              'Hello',
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w300
                              ),
                            ),
                            SizedBox(width: 5,),
                            Text(
                              'Jim',
                              style: TextStyle(
                                  fontSize: 26,
                                  fontWeight: FontWeight.w900
                              ),

                            ),
                          ],
                        ),
                        Container(
                          height: 40.0,
                          width: 40.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/cover.jpg'),
                              fit: BoxFit.fill,
                            ),
                            shape: BoxShape.circle,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 25,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Color(0xffF6F6F4)
                    ),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.search,
                          size: 26,
                        ),
                        SizedBox(width: 10,),
                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration(
                                hintText: 'Search food',
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                disabledBorder: InputBorder.none
                            ),
                          ),
                        ),
                        Container(
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Icon(
                              Icons.settings
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 25,),
                  Container(
                    child: Row(
                      children: [
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Recommended',
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 30,
                                ),
                              ),
                              Container(
                                color: Colors.yellow,
                                width: 200,
                                height: 3,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 25,),
                  Container(
                    child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                            children: <Widget>[
                              MealCard(),
                              MealCard(),
                              MealCard(),
                              MealCard(),
                            ]
                        )
                    ),
                  ),
                  SizedBox(height: 25,),
                  Container(
                    child: Row(
                      children: [
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Other Food',
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 30,
                                ),
                              ),
                              Container(
                                color: Colors.yellow,
                                width: 150,
                                height: 3,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 25,),

                  OtherFoodCard(),
                  OtherFoodCard(),
                  OtherFoodCard(),
                  OtherFoodCard(),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
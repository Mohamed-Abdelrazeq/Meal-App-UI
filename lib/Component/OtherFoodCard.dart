import 'package:flutter/material.dart';
import 'package:pro_ui_1_app/Screens/MealScreen.dart';

class OtherFoodCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        FocusScope.of(context).requestFocus(new FocusNode());
        Navigator.pushNamed(context, MealScreen.id);
      },
      child: ListTile(
        leading: Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                  image: AssetImage('assets/meal1.jpg')
              )
          ),
        ),
        title: Text('Spaghetti'),
        subtitle: Text('Better than you think'),
        trailing: Text('35 \$',style: TextStyle(color: Color(0xaa000000)),),
      ),
    );
  }
}

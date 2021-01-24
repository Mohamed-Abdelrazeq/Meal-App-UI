import 'package:flutter/material.dart';
import 'package:pro_ui_1_app/Screens/MealScreen.dart';

class MealCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        FocusScope.of(context).requestFocus(new FocusNode());
        Navigator.pushNamed(context, MealScreen.id);
      },
      child: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(10),
        height: 280,
        width: 180,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black54,
                offset: Offset(1.0, 1.0), //(x,y)
                blurRadius: 5.0,
              ),
            ],
            image: DecorationImage(
                image: AssetImage('assets/meal1.jpg'),
                fit: BoxFit.fitHeight
            ),
            borderRadius: BorderRadius.circular(20)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Color(0x22000000),
                    borderRadius: BorderRadius.circular(5),

                  ),
                  child: Text(
                    'Spaghetti',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w400
                    ),
                  ),
                ),
              ],
            ),
            Spacer(),
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Color(0x33000000),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.favorite_border,
                    color: Colors.white,
                  ),
                  Text(
                    ' +15',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

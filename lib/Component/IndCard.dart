import 'package:flutter/material.dart';

class IndCard extends StatelessWidget {
  const IndCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      height: 60,
      width: 60,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Image(image: AssetImage('assets/tomato.png'),),
    );
  }
}
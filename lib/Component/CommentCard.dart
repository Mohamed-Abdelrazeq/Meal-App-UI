import 'package:flutter/material.dart';

class CommentCard extends StatelessWidget {
  const CommentCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/cover.jpg'),

          ),
          title: Text('Pam'),
          subtitle: Column(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.star,
                    size: 15,
                    color: Colors.orangeAccent,
                  ),
                  Icon(
                    Icons.star,
                    size: 15,
                    color: Colors.orangeAccent,
                  ),
                  Icon(
                    Icons.star,
                    size: 15,
                    color: Colors.orangeAccent,
                  ),
                  Icon(
                    Icons.star,
                    size: 15,
                    color: Colors.orangeAccent,
                  ),
                  Icon(
                    Icons.star,
                    size: 15,
                    color: Colors.orangeAccent,
                  ),
                ],
              ),

            ],
          ),
          trailing: Text('Sep 28, 2019',style: TextStyle(color: Color(0xaa000000)),),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(70, 0, 10, 0),
          child: Text(
            'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. ',
            style: TextStyle(

            ),
          ),
        )


      ],
    );
  }
}

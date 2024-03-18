import 'package:flutter/material.dart';

class ChatChildren extends StatefulWidget {
  final String image;

  ChatChildren({
   required this.image,
});

  @override
  State<ChatChildren> createState() => _ChatChildrenState();
}

class _ChatChildrenState extends State<ChatChildren> {
  @override
  Widget build(BuildContext context) {
    String image= widget.image;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage:
          AssetImage(image),
        ),
        SizedBox(height: 10,),
        Text('Barry',style: TextStyle(
            color: Colors.black,
            fontSize: 18
        ),)
      ],
    );
  }
}

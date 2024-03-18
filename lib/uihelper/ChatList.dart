import 'package:flutter/material.dart';

class chatList extends StatefulWidget {
  final String image;

  chatList({
    required this.image,
});
  @override
  State<chatList> createState() => _chatListState();
}

class _chatListState extends State<chatList> {
  @override
  Widget build(BuildContext context) {
    String image= widget.image;
    return Padding(
      padding: const EdgeInsets.only(left: 26.0,top: 10,right: 10),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage:
            AssetImage(image),
          ),
          SizedBox(width: 10,),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text('Bobby LangFod',style: TextStyle(
                      color: Colors.black,
                      fontFamily: ('Quicksand'),
                      fontSize: 17
                  ),),
                  SizedBox(width: 120,),
                  Text('Tue',style: TextStyle(
                      color: Colors.black
                  ),),
                ],
              ),
              SizedBox(height: 5,),
              Text('Will do,suer,thank you',style: TextStyle(
                color: Colors.black,
              ),),
            ],
          ),
        ],
      ),
    );
  }
}

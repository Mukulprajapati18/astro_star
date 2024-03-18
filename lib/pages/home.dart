
import 'package:astro_star/pages/account.dart';
import 'package:flutter/material.dart';
import 'package:astro_star/uihelper/card_item.dart';

import '../uihelper/ChatList.dart';
import '../uihelper/Drawer1.dart'; // Assuming card_item.dart is in the same directory

class UserHome extends StatefulWidget {
  @override
  State<UserHome> createState() => _UserHomeState();
}

class _UserHomeState extends State<UserHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer1(),
      appBar: AppBar(
        title: Container(
          alignment: Alignment.centerRight,
          child: GestureDetector(
            onTap: () {
              // Navigate to the ProfilePage
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => UserAccount()),
              );
            },
            child: CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage('assets/images/img.png'),
            ),
          ),
        ),

      ),
      body: Container(
        height: 675,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  alignment: Alignment.topLeft,
                  child: Wrap(
                    children: [Text(
                    "Hello,\nDerek Doyle",style: TextStyle(
                    fontSize: 40,fontWeight: FontWeight.w200,fontFamily: 'MadimiOne'
                                ),
                                ),]
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal, // Enable horizontal scrolling
                  child: Row(
                    children: [
                      CardItem(title: "HTML", description: "HTLM cource", imageUrl: 'assets/images/img_5.png',),
                      CardItem(title: "HTML", description: "HTLM cource",imageUrl: 'assets/images/img_7.png',),
                      CardItem(title: "HTML", description: "HTLM cource",imageUrl: 'assets/images/img_8.png'),
                      CardItem(title: "HTML", description: "HTLM cource",imageUrl: 'assets/images/img_8.png'),
                      CardItem(title: "HTML", description: "HTLM cource",imageUrl: 'assets/images/img_6.png'),

                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                Text('Favorites', style: TextStyle(fontFamily: 'MadimiOne', fontSize: 25, fontWeight: FontWeight.w200),),
                TextButton(
                    onPressed: (){},
                    child: Text('See all')
                ),],
                ),
              ),
              chatList(image: 'assets/images/img_4.png',),
              chatList(image: 'assets/images/img_1.png',),
              chatList(image: 'assets/images/img_2.png',),
              chatList(image: 'assets/images/img_3.png',),
            ],
          ),
        ),
      ),
    );
  }
}
// import 'package:flutter/material.dart';
//
// import '../uihelper/ChatChildren.dart';
// import '../uihelper/ChatList.dart';
//
// class ChatListPage extends StatelessWidget {
//   @override
//     Widget build(BuildContext context) {
//       return Scaffold(
//         body: Padding(
//           padding: const EdgeInsets.all(20.0),
//           child: SafeArea(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     const Text('Messages',style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         fontFamily: ('Quicksand'),
//                         fontSize: 30,
//                         color: Colors.black
//                     ),),
//                     IconButton(onPressed: (){},
//                         icon: const Icon(Icons.search,
//                           color: Colors.black,
//                           size: 36,
//                         ))
//                   ],
//                 ),
//                 SizedBox(height: 5,),
//                 Text('R E C E N T',style: TextStyle(
//                   color: Colors.black,
//                 ),),
//                 SizedBox(
//                   height: 15,
//                 ),
//                 SizedBox(
//                   height: 110,
//                   child: ListView(
//                       scrollDirection: Axis.horizontal,
//                       children:[
//                         ChatChilren(),
//                         SizedBox(width: 25,),
//                         ChatChilren(),
//                         SizedBox(width: 25,),
//                         ChatChilren(),
//                         SizedBox(width: 25,),
//                         ChatChilren(),
//                         SizedBox(width: 25,),
//                         ChatChilren(),
//                       ]
//                   ),
//                 ),
//                 SizedBox(height: 20,),
//                 Container(
//                   height: 478,
//                   width: double.infinity,
//                   decoration: const BoxDecoration(
//                       color: Color(0x4F43626E),
//                       borderRadius: BorderRadius.only(
//                         topLeft: Radius.circular(50),
//                         topRight: Radius.circular(50),
//                       )
//                   ),
//                   child: ListView(
//                     children: [
//                       GestureDetector(
//                         onTap: (){
//                         },
//                         child:
//                         chatList(),
//                       ),
//                       chatList(),
//                       chatList(),
//                       chatList(),
//                       chatList(),
//                       chatList(),
//                       chatList(),
//                       chatList(),
//                       chatList(),
//                     ],
//                   ),
//
//                 ),
//               ],
//             ),
//           ),
//         ),
//       );
//     }
//   }
//
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../uihelper/ChatChildren.dart';
import '../uihelper/ChatList.dart';


class ChatListPage extends StatefulWidget {
  @override
  State<ChatListPage> createState() => _ChatListPageState();
}

class _ChatListPageState extends State<ChatListPage> {
  bool isListView = true; // Initial view mode

  void toggleViewMode() {
    setState(() {
      isListView = !isListView;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Messages',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'MadimiOne',
                      fontSize: 30,
                      color: Colors.black,
                    ),
                  ),
                  IconButton(
                    onPressed: toggleViewMode,
                    icon: Icon(
                      isListView ? Icons.grid_view : Icons.list,
                      color: Colors.black,
                      size: 36,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5),
              Text(
                'R E C E N T',
                style: TextStyle(color: Colors.black, fontFamily: 'MadimiOne'),
              ),
              SizedBox(height: 15),
              SizedBox(
                height: 110,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    // Replace with your recent chat item widgets
                    ChatChildren(
                      image: 'assets/images/img.png',
                    ), // Assuming you have this defined elsewhere
                    SizedBox(width: 25),
                    ChatChildren(
                      image: 'assets/images/img_1.png',
                    ),
                    SizedBox(width: 25),
                    ChatChildren(
                      image: 'assets/images/img_2.png',
                    ),
                    SizedBox(width: 25),
                    ChatChildren(
                      image: 'assets/images/img_3.png',
                    ),
                    SizedBox(width: 25),
                    ChatChildren(
                      image: 'assets/images/img_4.png',
                    ),
                    SizedBox(width: 25),
                    ChatChildren(
                      image: 'assets/images/img_8.png',
                    ),
                    SizedBox(width: 25),
                    ChatChildren(
                      image: 'assets/images/img_7.png',
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5),
              Text('Chats :',style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 22, fontFamily: 'MadimiOne'
              ),),
              SizedBox(height: 10),
              Container(
                height: 448, // Adjust if needed based on content
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color(0x5e374465),
                  borderRadius: BorderRadius.all(Radius.circular(10),
                  ),
                ),
                child: isListView
                    ? ListView.builder(
                  // Use ListView.builder for potentially large datasets
                  itemCount: 10, // Replace with actual data count
                  itemBuilder: (context, index) =>
                      chatListItem(
                          index), // Assuming this builds chat list items
                )
                    : GridView.count(
                  crossAxisCount: 2, // Adjust for desired grid layout
                  children: List.generate(
                    10, // Replace with actual data count
                        (index) =>
                        chatGridItem(index), // Assuming this builds grid items
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget chatListItem(int index) {
    final List<String> imagePaths = [
      'assets/images/img_4.png',
      'assets/images/img_2.png',
      'assets/images/img.png',
      'assets/images/img_1.png',
      'assets/images/img_5.png',
      'assets/images/img_4.png',
      'assets/images/img_2.png',
      'assets/images/img.png',
      'assets/images/img_1.png',
      'assets/images/img_5.png',
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
      child: Column( // Use Column for vertical layout
        children: [
          Row( // Use Row for horizontal layout of chat item
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(imagePaths[index]),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Text(
                  'Message ${index + 1}',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
          if (index >= 0 && index != imagePaths.length - 1)
            Divider(
              color: Colors.grey[300],
              thickness: 1,
            ),
        ],
      ),
    );
  }

  Widget chatGridItem(int index) {
    final List<String> imagePaths = [
      'assets/images/img_4.png',
      'assets/images/img_2.png',
      'assets/images/img.png',
      'assets/images/img_1.png',
      'assets/images/img_5.png',
      'assets/images/img_4.png',
      'assets/images/img_2.png',
      'assets/images/img.png',
      'assets/images/img_1.png',
      'assets/images/img_5.png',
    ];
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage(imagePaths[index]),
            ),
            SizedBox(height: 5),
            Text(
              'Name ${index + 1}', // Placeholder for chat name
              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text(
              'Message ${index + 1}', // Placeholder for message content
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}


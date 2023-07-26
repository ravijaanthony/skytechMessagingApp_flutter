import 'package:flash_chat_flutter/screens/chat_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/userChatcard.dart';

ChatScreen chatScreen = ChatScreen();

class MessageScreen extends StatefulWidget {
  static String id = "messages_screen";

  const MessageScreen({super.key});

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Approval List"),

        /// header icons
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
        ],
      ),

      /// add new message
      floatingActionButton: Padding(
        padding: EdgeInsets.only(bottom: 10),
        child: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
      ),
      body: StreamBuilder(stream: ,
          builder: (context, snapshot) {
        return ListView.builder(
          itemCount: 16,
          // padding: EdgeInsets.only(),
          physics: BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return UserChatCard();
          },
        );
      }),
    );
  }
}
// SafeArea(
// child: ListView(children: [
// Container(
// padding: const EdgeInsets.only(right: 5.99),
// child: Column(
// mainAxisSize: MainAxisSize.min,
// mainAxisAlignment: MainAxisAlignment.end,
// crossAxisAlignment: CrossAxisAlignment.center,
// children: [
// Container(
// width: 400.01,
// height: 650,
// child: Stack(
// children: [
// Positioned(
// left: 52,
// top: 56,
// child: Container(
// width: 324.01,
// decoration: ShapeDecoration(
// shape: RoundedRectangleBorder(
// side: BorderSide(
// width: 0.50,
// strokeAlign: BorderSide.strokeAlignCenter,
// color: Color(0xFF18252D),
// ),
// ),
// ),
// ),
// ),
// Positioned(
// left: 73,
// top: 71,
// child: Container(
// width: 137,
// height: 91,
// child: Stack(
// children: [
// Positioned(
// left: 1,
// top: 0,
// child: SizedBox(
// width: 96,
// height: 23.48,
// child: Text(
// 'John Doe',
// style: TextStyle(
// color: Color(0xFFD3DAE0),
// fontSize: 21,
// fontFamily: 'PT Sans',
// fontWeight: FontWeight.w400,
// ),
// ),
// ),
// ),
// ],
// ),
// ),
// ),
// Positioned(
// left: 322,
// top: 74,
// child: Text(
// '3:14 pm',
// style: TextStyle(
// color: Color(0xFF868F94),
// fontSize: 12,
// fontFamily: 'PT Sans',
// fontWeight: FontWeight.w700,
// ),
// ),
// ),
// ],
// ),
// ),
// ],
// ),
// ),
// ]),
// );
// class MessageRow extends StatelessWidget {
//   final String message;
//   final String time;
//   // final String profilePicture;
//   final String status;
//
//   const MessageRow({
//     required this.message,
//     required this.time,
//     // required this.profilePicture,
//     required this.status,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.all(10),
//       child: Row(
//         children: [
//           // CircleAvatar(
//           //   backgroundImage: NetworkImage(profilePicture),
//           // ),
//           SizedBox(width: 10),
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(message),
//                 Text(time),
//               ],
//             ),
//           ),
//           Text(status),
//         ],
//       ),
//     );
//   }
// }

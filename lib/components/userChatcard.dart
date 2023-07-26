import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserChatCard extends StatefulWidget {
  const UserChatCard({super.key});

  @override
  State<UserChatCard> createState() => _UserChatCardState();
}

class _UserChatCardState extends State<UserChatCard> {
  @override
  Widget build(BuildContext context) {
    /// Message card
    return Card(
      margin: EdgeInsets.only(top: 4),
      child: InkWell(
        onTap: () {},
        child: ListTile(
          /// userIcon
          leading: CircleAvatar(child: Icon(CupertinoIcons.person)),

          /// Message received person
          title: Text("Demo User"),

          /// Message
          subtitle: Text("Last user message", maxLines: 1),

          /// Time of message
          trailing: Text(
            "12:00pm",
            style: TextStyle(color: Colors.black54),
          ),
        ),
      ),
    );
  }
}

// class MessageCounter extends StatelessWidget {
//   const MessageCounter({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(padding: Ed,);
//   }
// }

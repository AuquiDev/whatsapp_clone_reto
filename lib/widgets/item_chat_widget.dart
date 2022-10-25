import 'package:flutter/material.dart';
import 'package:whatsapp_clone_reto/models/chat_model.dart';
import 'package:whatsapp_clone_reto/pages/chats_details_page.dart';

class ItemChatWidget extends StatelessWidget {

  /*String avattarUrl;
  String Username;
  String time;
  String message;
  int countMessage;*/
  ChatModels chatmodels;
  ItemChatWidget({
    /*required this.avattarUrl,
    required this.Username,
    required this.time,
    required this.message,
    required this.countMessage*/
    required this.chatmodels
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom:6),
      child: ListTile(
        leading:  CircleAvatar(
          backgroundColor: Colors.red,
          radius: 26,
          backgroundImage: NetworkImage(chatmodels.avattarUrl),
        ),
        title:  Text(chatmodels.Username,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold
          ),
        ),
        subtitle: Text(
          chatmodels.isTyping == true ? "escribiendo..." : chatmodels.message,
          style: TextStyle(
            fontSize: 13,
            color: chatmodels.isTyping == true ? Color(0xff01c851) : Colors.black45
        ),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
               Text(chatmodels.time,
                style: TextStyle(
                  fontSize: 12,
                  color: chatmodels.countMessage == 0 ? Colors.black45 : Color(0xff01c851)
                ),
              ),

             chatmodels.countMessage >0 ? Container(
                height: 20,
                width: 20,
                alignment: Alignment.center,
                decoration:  const BoxDecoration(
                  color:  Color(0xff01c851),
                  shape: BoxShape.circle
                ),
                child:  Text(chatmodels.countMessage.toString(),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 10
                ),
                ),
              ) : SizedBox()
          ],
        ),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=> ChatDetailsPage()));
        },
      ),
    );
  }
}
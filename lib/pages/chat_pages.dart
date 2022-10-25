import 'package:flutter/material.dart';
import 'package:whatsapp_clone_reto/data/data_dumimy.dart';
import 'package:whatsapp_clone_reto/widgets/widgets.dart';

class ChatsPage extends StatelessWidget {
  const ChatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, index) {
          return ItemChatWidget(
            chatmodels: chats[index],
           /* avattarUrl: chats[index].avattarUrl, 
            Username: chats[index].Username, 
            time: chats[index].time, 
            message: chats[index].message, 
            countMessage: chats[index].countMessage,*/

          );
        },
      
      );
  }
}

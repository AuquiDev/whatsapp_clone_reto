import 'package:flutter/material.dart';
import 'package:whatsapp_clone_reto/data/data_dumimy.dart';
import 'package:whatsapp_clone_reto/models/chat_model.dart';

class ChatDetailsPage extends StatelessWidget {
  const ChatDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leadingWidth: 25,
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CircleAvatar(
                backgroundColor: Colors.white12,
                backgroundImage: NetworkImage(
                    'https://i.pinimg.com/474x/4d/60/02/4d6002d77a22cef77764051595cce9f0.jpg'),
              ),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Elizabeth Mayumi Cardasha',
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      'ult. vez ayer 10:30 p.m.',
                      style: TextStyle(fontSize: 14, color: Colors.white54),
                    ),
                  ],
                ),
              )
            ],
          ),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.videocam)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.call)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
          ],
        ),
        body: Stack(
          children: [
            //fondo pantalla
            Container(
              color: Colors.black12,
            ),

            // listado de mensajes
          
            ListView.builder(
              itemCount: chatmessageList.length,
              itemBuilder: (context, index){
                return 
                 Align(
                  alignment: chatmessageList[index].messageType == 'me' ? Alignment.topRight : Alignment.topLeft,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 6),
                    margin: EdgeInsets.symmetric(horizontal: 12,vertical: 8),
                    decoration: BoxDecoration(
                      color: chatmessageList[index].messageType == 'me' ? Color(0xffe3ffc4): Colors.white,
                      borderRadius:  BorderRadius.only(
                        bottomLeft: Radius.circular(14),
                        bottomRight: Radius.circular(14),
                        topLeft: chatmessageList[index].messageType == 'me' ? Radius.circular(14) : Radius.circular(0),
                        topRight: chatmessageList[index].messageType == 'me' ? Radius.circular(0) : Radius.circular(14)
                      ),
                      boxShadow: [
                       BoxShadow(
                         color: Colors.black.withOpacity(.04),
                         offset: Offset(4,4),
                         blurRadius: 10
                       )
                      ]
                    ),
                    child: Text(chatmessageList[index].messageContent)

                  ),
                );
              },
              
            ),





            // input del nuevo mensaje
            Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 20),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: 'escribe un mensaje',
                                hintStyle: const TextStyle(
                                    fontSize: 16, color: Colors.black38),
                                filled: true,
                                fillColor: Colors.white,
                                prefixIcon: const Icon(
                                  Icons.sentiment_satisfied_alt,
                                  size: 30,
                                  color: Colors.black45,
                                ),
                                suffixIcon: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.attach_file,
                                          size: 30,
                                        )),
                                    IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.camera_alt,
                                          size: 30,
                                        )),
                                    SizedBox(
                                      width: 8,
                                    )
                                  ],
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: BorderSide.none),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: BorderSide.none)),
                          ),
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        GestureDetector(
                          onTap: () {
                            print('hola');
                          },
                          child: Container(
                              decoration: const BoxDecoration(
                                  color: Color(0xff008878),
                                  shape: BoxShape.circle),
                              padding: EdgeInsets.all(12),
                              child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.send,
                                    size: 30,
                                    color: Colors.white,
                                  ))),
                        )
                      ],
                    ))),
        
          ],
        ));
  }
}

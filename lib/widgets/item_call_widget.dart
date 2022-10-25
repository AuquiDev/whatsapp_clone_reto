import 'package:flutter/material.dart';



class ItemCallWidget extends StatelessWidget {
  const ItemCallWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.only(bottom: 4),
      child: ListTile(
            title: const Text(
              'Emilia Cardenas ',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            subtitle: Row(
              children: [
                const Icon(
                  Icons.call_made_rounded,
                  color: Color(0xff01c851),
                ),
                const SizedBox(
                  width: 4,
                ),
                const Text(
                  'Ayer 11:02 pm',
                  style: TextStyle(color: Colors.black38),
                )
              ],
            ),
            leading: const CircleAvatar(
              radius: 26,
              backgroundImage: NetworkImage(
                  'https://i.pinimg.com/474x/4d/60/02/4d6002d77a22cef77764051595cce9f0.jpg'),
            ),
            trailing: IconButton(onPressed: () => null, icon: const Icon(Icons.call,size: 26,color: Color(0xff01c851),)),
          ),
    );
  }
}
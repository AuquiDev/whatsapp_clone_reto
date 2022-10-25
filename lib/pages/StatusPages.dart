import 'package:flutter/material.dart';
import 'package:whatsapp_clone_reto/widgets/item_status_pages.dart';

class StatusPages extends StatelessWidget {
  const StatusPages({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ListTile(
              title: const Text(
                'My status',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: const Text('hace 9h'),
              leading: CircleAvatar(
                backgroundColor: Colors.white.withOpacity(.3),
                backgroundImage: const NetworkImage(
                    'https://i.pinimg.com/564x/33/3d/b3/333db3f070ebc755ac69f200d23ab2e2.jpg'),
                radius: 26,
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    decoration: BoxDecoration(
                        color: const Color(0xff01c851),
                        borderRadius: BorderRadius.circular(20)),
                    width: 18,
                    height: 18,
                    child: const Icon(
                      Icons.add,
                      size: 15,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              trailing: Container(
                decoration:
                    BoxDecoration(color: Color.fromARGB(14, 0, 0, 0), shape: BoxShape.circle),
                child: IconButton(
                    color: Colors.black38,
                    onPressed: () => null,
                    icon: Icon(Icons.camera_alt)),
              )),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            width: double.infinity,
            color: Color.fromARGB(31, 202, 200, 200),
            height: 50,
            child: const Align(
                alignment: Alignment.bottomLeft,
                child: Text(
              'RECIENTES',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14,color: Color(0xff01c851)),
            )),
          ),
          
          ItemsEstadosPages(),
          ItemsEstadosPages(),
          ItemsEstadosPages(),
          ItemsEstadosPages(),
          ItemsEstadosPages(),
          ItemsEstadosPages(),
          ItemsEstadosPages(),
          ItemsEstadosPages(),
          ItemsEstadosPages(),
          ItemsEstadosPages(),
          ItemsEstadosPages(),
          ItemsEstadosPages(),
            
          
        ],
      ),
    );
  }
}

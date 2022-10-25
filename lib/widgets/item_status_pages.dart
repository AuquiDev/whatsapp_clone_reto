import 'package:flutter/material.dart';


class ItemsEstadosPages extends StatelessWidget {
  const ItemsEstadosPages({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
         ListTile(
        
            title: Text(
              'Karoline',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text('justo ahora'),
            leading: CircleAvatar(
              backgroundColor:Color(0xff01c851),
              /*backgroundImage: const NetworkImage(
                  'https://i.pinimg.com/564x/33/3d/b3/333db3f070ebc755ac69f200d23ab2e2.jpg'),*/
              radius: 26,
              child: CircleAvatar(
                radius: 23.5,
                backgroundColor: Colors.white,
                backgroundImage: NetworkImage('https://i.pinimg.com/474x/51/17/69/511769f35d74626b8ede6039e2d99bf5.jpg'),
              )
                ),
              ),
              Divider(indent: 80,)
      ],
    );
  }
}

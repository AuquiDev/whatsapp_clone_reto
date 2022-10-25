

import 'package:flutter/material.dart';
import 'package:whatsapp_clone_reto/widgets/item_call_widget.dart';

class CallPages extends StatelessWidget {
  const CallPages({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
         ItemCallWidget(),
         ItemCallWidget(),
         ItemCallWidget(),
         ItemCallWidget(),
          ItemCallWidget(),
         ItemCallWidget(),
         ItemCallWidget(),
         ItemCallWidget(),
          ItemCallWidget(),
         ItemCallWidget(),
         ItemCallWidget(),
         ItemCallWidget(),
          ItemCallWidget(),
         ItemCallWidget(),
         ItemCallWidget(),
         ItemCallWidget(),
          ItemCallWidget(),
         ItemCallWidget(),
         ItemCallWidget(),
         ItemCallWidget(),

        ],
      ),
    );
  }
}

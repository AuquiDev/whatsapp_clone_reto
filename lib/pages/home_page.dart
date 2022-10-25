import 'package:flutter/material.dart';
import 'package:whatsapp_clone_reto/pages/chat_pages.dart';

class HomePage extends StatefulWidget {


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {


  TabController? _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _tabController = TabController(length: 4, vsync: this);
  }
  // = TabController(length: 4, vsync: vsync);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        
        title: Text("WhatsApp"),
        actions: [
          IconButton(onPressed: ()=> null, icon: Icon(Icons.search)),
          IconButton(onPressed: ()=> null, icon: Icon(Icons.more_vert_outlined))
        ],
        bottom: TabBar(
          indicatorColor: Colors.white,
          indicatorWeight: 3,
          controller: _tabController,
          tabs: [
               Tab(child: IconButton(onPressed: () => null, icon: Icon(Icons.camera_alt)),),
               Tab(child: Text('Chats',style: _textStyle(),),),
               Tab(child: Text('Status',style: _textStyle(),),),
               Tab(child: Text('Calls',style: _textStyle(),),),
          ],
         
        ),
      ),
      
      floatingActionButton: FloatingActionButton(
        onPressed: ()=> null,
        child: const Icon(Icons.message),
        ),

      body: TabBarView(
        controller: _tabController,
        children: [
          Container(height: double.infinity,color: Colors.red,),
          const ChatsPage(),
          Container(height: double.infinity,color: Colors.amber,),
          Container(height: double.infinity,color: Colors.pink,)
        ],
        
       )
      
     );
  }

  TextStyle _textStyle() => const TextStyle(fontWeight: FontWeight.bold,fontSize: 16);
}
import 'package:flutter/material.dart';


class DrawerHome extends StatelessWidget {
  const DrawerHome({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("flutter aplication"),
      ),
      body:const Center(
        child: Text(" My Page"),
      ),
      drawer: Drawer(
        child:ListView(
             padding: EdgeInsets.zero,
          children:  [
           const  DrawerHeader(
                 decoration: BoxDecoration(color: Colors.blue),
                 child: Text('Drawer header'),
            ),
            ListTile(
              title: const  Text('item 1'),
             onTap: () {
               Navigator.pop(context);
             },
            ),
             ListTile(
              title: const  Text('item 2'),
             onTap: () {
               Navigator.pop(context);
             },
            ),

          ],
        ) ,
      ),
    );
  }
}
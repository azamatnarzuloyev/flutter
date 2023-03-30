import 'package:flutter/material.dart';

class MyhomePage extends StatelessWidget {
  const MyhomePage({super.key});

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Text("flutter"),),
      body: Center(
      child: ElevatedButton(
        onPressed: () {
          final snackBar = SnackBar(
            content: const Text('Yay! A SnackBar!'),
            action: SnackBarAction(
              label: 'Undo',
              onPressed: () {
              
              },
            ),
          );

     
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: const Text('Show SnackBar tutorial ', style: TextStyle(fontFamily: 'Schyler'),),
      ),
    ),
    
    );
  }
}

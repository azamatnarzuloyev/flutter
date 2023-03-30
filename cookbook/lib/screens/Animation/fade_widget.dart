import 'package:flutter/material.dart';


class MyHomepage extends StatefulWidget {
 final String title;
  const MyHomepage({super.key, required this.title});

  @override
  State<MyHomepage> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  bool _visible = true;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
        appBar: AppBar(),
       body: Center(
        child: AnimatedOpacity(
          // If the widget is visible, animate to 0.0 (invisible).
          // If the widget is hidden, animate to 1.0 (fully visible).
          opacity: _visible ? 1.0 : 0.0,
          duration: const Duration(milliseconds: 1000),
          // The green box must be a child of the AnimatedOpacity widget.
          child: Container(
            width: 200.0,
            height: 200.0,
            transformAlignment: Alignment.center,
            color: Colors.green,
            child: const Center(
              child: Text("Salom Azamat", style: TextStyle(fontSize: 20),),
            )
          ),
        ),
      ),
    floatingActionButton: FloatingActionButton(
      onPressed: () {
        setState(() {
          _visible = !_visible;
        });
      },
      tooltip: 'opacity',
      child: const Icon(Icons.flip),
    ),
    );
  }
}
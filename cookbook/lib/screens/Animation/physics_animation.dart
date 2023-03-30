import 'package:flutter/material.dart';

class PhysicsDragDemo extends StatelessWidget {
  const PhysicsDragDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: const Homepage(
          child: Text("flutter aplication"),
        ));
  }
}

class Homepage extends StatefulWidget {
  const Homepage({super.key, required this.child});
  final Widget child;

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  Align(
      child: Card(
        child: widget.child,
      ),
    );
  }
}

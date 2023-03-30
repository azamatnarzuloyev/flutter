import 'package:flutter/material.dart';


class HomepageUI extends StatefulWidget {
  const HomepageUI({super.key});

  @override
  State<HomepageUI> createState() => _HomepageUIState();
}

class _HomepageUIState extends State<HomepageUI> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("hello date"),
      )
    );
  }
}
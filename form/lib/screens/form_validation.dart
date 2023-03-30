import 'package:flutter/material.dart';


class FormAplication extends StatefulWidget {
  const FormAplication({super.key});

  @override
  State<FormAplication> createState() => _FormAplicationState();
}

class _FormAplicationState extends State<FormAplication> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:const Text("flutter forms"),
        
      ),
      body: Center(
        child: Form(
          child: Column(
            children:const [
              Text("Form aplication"),
            ],
          ),
        ),
      ),
    );
  }
}
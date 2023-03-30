import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 late bool? emailValid;
  final _formState = GlobalKey<FormState>();
  final TextEditingController _phonecontrollerfiel = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();
  final TextEditingController _emailcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
      
        children: [
          Form(
            key: _formState,
            child: Padding(padding: const EdgeInsets.all(5),
            child: Column(
              children: [
                TextFormField(
              controller: _phonecontrollerfiel,
              decoration:const InputDecoration(
                border: OutlineInputBorder(),
                labelStyle: TextStyle(color: Colors.blue),
                labelText: "phone number",
              ),
              keyboardType: TextInputType.phone,
              validator: (value) {
                if (emailValid==false) {
                  return "this is phone number errror";
                } else {
                  return null;
                }
              },
            ),
            const   SizedBox(height: 10,),
             
             TextFormField(
              controller: _passwordcontroller,
              decoration:const InputDecoration(
                border: OutlineInputBorder(),
                labelStyle: TextStyle(color: Colors.blue),
                labelText: "password",
              ),
              keyboardType: TextInputType.phone,
              validator: (value) {
                if (value!.length < 5) {
                  return "this is phone number errror";
                } else {
                  return null;
                }
              },
            ),
         const   SizedBox(height: 10,),
            TextFormField(
              onChanged: (value) {
                emailvalide(value);
                setState(() {
                  
                });
              },
              controller: _emailcontroller,
              decoration:const InputDecoration(
                border: OutlineInputBorder(),
                labelStyle: TextStyle(color: Colors.blue),
                labelText: "email",
              ),
            
              validator: (value) {
                if (value!.length < 5) {
                  return "emnail error";
                } else {
                  return null;
                }
              },
            ),
              ],

              
            ),
            )
          ),
       
         
        
          ElevatedButton(onPressed: () {
            if (_formState.currentState!.validate()) 
            {
              _phonecontrollerfiel.clear();
              _passwordcontroller.clear();
              _emailcontroller.clear();
            }
          }, child: const Text("supmit"))
        ],
      ),


 

    );

    
  }
  void emailvalide(String? email) {
  
      emailValid = RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$').hasMatch(email!);
 
 
  }

}

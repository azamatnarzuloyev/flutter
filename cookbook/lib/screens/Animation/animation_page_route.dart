import 'package:flutter/material.dart';

class AnimationRoutePage extends StatefulWidget {
  const AnimationRoutePage({super.key});

  @override
  State<AnimationRoutePage> createState() => _AnimationRoutePageState();
}

class _AnimationRoutePageState extends State<AnimationRoutePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter aplication "),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(_createRoute());
          },
          child: const Text("Go"),
        ),
      ),
    );
  }

  Route _createRoute() {
    return PageRouteBuilder(
      barrierColor:const Color.fromARGB(255, 202, 9, 9),
      transitionDuration:const Duration(seconds: 3),
      reverseTransitionDuration:const  Duration(seconds: 5),
      pageBuilder: (context, animation, secondaryAnimation) => const PageHome(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        var curve = Curves.ease;
        
        final tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }
}

class PageHome extends StatelessWidget {
  const PageHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animation page"),
      ),
      body: const Center(
        child: Text("Page 2"),
      ),
    );
  }
}

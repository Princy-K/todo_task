import 'package:flutter/material.dart';
import 'package:todo_task/pages/on_boarding_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onVerticalDragUpdate: (details) => Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const OnBoardingScreen()),(Route<dynamic> route) => false),
      onTap: () => Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const OnBoardingScreen()),(Route<dynamic> route) => false),
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RichText(
                text: const TextSpan(children: <TextSpan>[
                  TextSpan(text: 'Welcome to',style: TextStyle(fontSize: 32,color: Colors.black)),
                  TextSpan(text: ' Clear', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 32,color: Colors.black)),
                ]),
              ),
              const SizedBox(height: 12,),
              RichText(
                text: const TextSpan(children: <TextSpan>[
                  TextSpan(text: 'Tap or Swipe', style: TextStyle(fontSize:18,fontWeight: FontWeight.bold,color: Colors.black)),
                  TextSpan(text: ' to begin',style: TextStyle(color: Colors.black,fontSize: 18)),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:todo_task/pages/home_screen.dart';
import 'package:todo_task/pages/login_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final introKey = GlobalKey<IntroductionScreenState>();

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      key: introKey,
      isTopSafeArea: true,
      pages: [
        PageViewModel(
          title: "",
            bodyWidget: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:  [
                RichText(
                  text: const TextSpan(children: <TextSpan>[
                    TextSpan(text: 'Clear sorts of item by',style: TextStyle(fontSize: 24,color: Colors.black)),
                    TextSpan(text: ' priority', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: Colors.black)),
                  ]),
                ),
                const SizedBox(height: 24,),
                const Text("Important items ae highlighted at the top...",style: TextStyle(fontSize: 24,),textAlign: TextAlign.center,),
                const SizedBox(height: 32,),
                Image.asset("assets/flutter1.png"),
              ],
            ),
        ),
        PageViewModel(
          title: "",
          bodyWidget: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:  [
              RichText(
                text: const TextSpan(children: <TextSpan>[
                  TextSpan(text: 'Tap and hold', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: Colors.black)),
                  TextSpan(text: ' to pick an item',style: TextStyle(fontSize: 24,color: Colors.black)),
                ]),
              ),
              const SizedBox(height: 24,),
              const Text("Drag it up or down to change its priority.",style: TextStyle(fontSize: 24,),textAlign: TextAlign.center,),
              const SizedBox(height: 32,),
              Image.asset("assets/flutter2.jpg"),
            ],
          ),
        ),
        PageViewModel(
          title: "",
          bodyWidget: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:  [
              const SizedBox(height: 24,),
              const Text("There are three navigation level...",style: TextStyle(fontSize: 24,),textAlign: TextAlign.center,),
              const SizedBox(height: 32,),
              Image.asset("assets/flutter1.png"),
            ],
          ),
        ),
        PageViewModel(
          title: "",
          bodyWidget: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:  [
              const SizedBox(height: 24,),
              RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(children: <TextSpan>[
                  TextSpan(text: 'Pinch together vertically', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: Colors.black)),
                  TextSpan(text: ' to collapse your current level and navigate up.',style: TextStyle(fontSize: 24,color: Colors.black)),
                ]),
              ),
              const SizedBox(height: 32,),
              Image.asset("assets/flutter2.jpg"),
            ],
          ),
        ),
        PageViewModel(
          title: "",
          bodyWidget: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:  [
              const SizedBox(height: 24,),
              RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(children: <TextSpan>[
                  TextSpan(text: 'Tap on a list', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: Colors.black)),
                  TextSpan(text: ' to see its content.',style: TextStyle(fontSize: 24,color: Colors.black)),
                ]),
              ),
              RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(children: <TextSpan>[
                  TextSpan(text: 'Tap on a list title', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: Colors.black)),
                  TextSpan(text: ' to edit it...',style: TextStyle(fontSize: 24,color: Colors.black)),
                ]),
              ),
              const SizedBox(height: 32,),
              Image.asset("assets/flutter1.png"),
            ],
          ),
        ),
        PageViewModel(
          title: "",
          bodyWidget: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:  [
              Image.asset("assets/flutter1.png"),
              const SizedBox(height: 32,),
              RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(children: <TextSpan>[
                  TextSpan(text: 'Use',style: TextStyle(fontSize: 32,color: Colors.black)),
                  TextSpan(text: ' iCloud', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 32,color: Colors.black)),
                  TextSpan(text: '?',style: TextStyle(fontSize: 32,color: Colors.black)),
                ]),
              ),
              const SizedBox(height: 32,),
              const Text("Storing your list in iCloud allows you to keep your data in sync across your iPhone, iPad and Mac.",style: TextStyle(fontSize: 24,),textAlign: TextAlign.center,),
              const SizedBox(height: 32,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MaterialButton(onPressed: () {},
                    color: Colors.white,
                    elevation: 0,
                    child: const Text("Not Now"),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8),side: const BorderSide(color: Colors.black)),
                  ),
                  const SizedBox(width: 24,),
                  MaterialButton(onPressed: () {},
                    color: Colors.white,
                    elevation: 0,
                    child: const Text("Use iCloud",style: TextStyle(fontWeight: FontWeight.bold),),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8),side: const BorderSide(color: Colors.black)),
                  )
                ],
              )
            ],
          ),
        ),
        PageViewModel(
          title: "",
          bodyWidget: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:  [
              const Text("Sign up to the newsletter, and unlock a theme of your lists.",style: TextStyle(fontSize: 24,),textAlign: TextAlign.center,),
              const SizedBox(height: 32,),
              Image.asset("assets/flutter2.jpg"),
              const SizedBox(height: 32,),
              TextFormField(
                decoration:  InputDecoration(hintText: "Email Address",
                enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                  focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                ),
              ),
              const SizedBox(height: 32,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MaterialButton(onPressed: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => const HomeScreen()),
                            (Route<dynamic> route) => false);
                  },
                    color: Colors.white,
                    elevation: 0,
                    child: const Text("Skip"),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8),side: const BorderSide(color: Colors.black)),
                  ),
                  const SizedBox(width: 80,),
                  MaterialButton(onPressed: () {},
                    color: Colors.white,
                    elevation: 0,
                    child: const Text("Join",style: TextStyle(fontWeight: FontWeight.bold),),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8),side: const BorderSide(color: Colors.black)),
                  )
                ],
              )
            ],
          ),
        ),
      ],
      showSkipButton: false,
      showNextButton: false,
      dotsFlex: 0,
      done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: kIsWeb
          ? const EdgeInsets.all(12.0)
          : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: const DotsDecorator(
        activeColor: Colors.black,
        size: Size(10.0, 10.0),
        color: Colors.grey,
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
      onDone: () => Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const LoginScreen()),
          (Route<dynamic> route) => false),
    );
  }
}

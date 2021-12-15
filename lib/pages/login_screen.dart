
import 'package:flutter/material.dart';
import 'package:todo_task/pages/home_screen.dart';
import 'package:todo_task/pages/signup_screen.dart';
import 'package:todo_task/widget/language_picker_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const LanguagePickerWidget(),
              const SizedBox(height: 32),
              Text(AppLocalizations.of(context)!.login,),
              const SizedBox(height: 24),
              TextFormField(
                decoration: InputDecoration(
                  hintText: AppLocalizations.of(context)!.username,
                  hintStyle: const TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w400,
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.amber,
                    ),
                    borderRadius: BorderRadius.circular(7.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.amber,
                    ),
                    borderRadius: BorderRadius.circular(7.0),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(
                  hintText: AppLocalizations.of(context)!.password,
                  hintStyle: const TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w400,
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.amber,
                    ),
                    borderRadius: BorderRadius.circular(7.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.amber,
                    ),
                    borderRadius: BorderRadius.circular(7.0),
                  ),
                ),
              ),
              const SizedBox(height: 32),
              ElevatedButton(onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder: (context) => const HomeScreen(),));
              }, child:  Text(AppLocalizations.of(context)!.login,)),
              const SizedBox(height: 32),
              InkWell(child: Text(AppLocalizations.of(context)!.signup,),
                onTap: () => Navigator.push(context,MaterialPageRoute(builder: (context) => const SignUpScreen(),)),),
            ],
          ),
      ),
    );
  }
}

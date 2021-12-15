import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(AppLocalizations.of(context)!.signup,),
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
            Navigator.pop(context);
          },
              child:  Text(AppLocalizations.of(context)!.signup,)),
        ],
      ),
    ));
  }
}

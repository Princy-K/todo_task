import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:todo_task/pages/splash_screen.dart';
import 'package:todo_task/provider/locale_provider.dart';
import 'l10n/l10n.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: SystemUiOverlay.values);
    return MultiProvider(
      providers: [ListenableProvider(create: (BuildContext context)  =>LocaleProvider(),)],
      child: ChangeNotifierProvider(
        create: (BuildContext context)=>LocaleProvider(),
        builder: (context, child) {
          final provider = Provider.of<LocaleProvider>(context);
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            locale: provider.locale,
            supportedLocales: L10n.all,
            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
            ],
            theme: ThemeData(
              primarySwatch: Colors.amber,
            ),
            home: const SplashScreen(),
          );
        },
      ),
    );
  }
}


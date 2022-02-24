import 'package:flutter/material.dart';
import 'Screens/onboarding_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Crypto App',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF1B232A),
        backgroundColor: const Color(0xFF1B232A),
        primaryColor: const Color(0xFF1B232A),
        accentColor: const Color(0xFF5ED5A8),
        iconTheme:
            const IconThemeData().copyWith(color: const Color(0xFF5ED5A8)),
        fontFamily: 'Neue Montreal',
        textTheme: TextTheme(
          headline2: TextStyle(
            color: const Color(0xFFFFFFFF),
            fontSize: 24.sp,
            fontWeight: FontWeight.w600,
          ),
          bodyText1: TextStyle(
            color: const Color(0xFF777777),
            fontSize: 18.sp,
            fontWeight: FontWeight.w600,
          ),
          bodyText2: TextStyle(
            color: const Color(0xFF0F1828),
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      home: const OnBoarrding(),
    );
  }
}

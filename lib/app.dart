import 'package:crypto_app/Screens/Home_page.dart';
import 'package:crypto_app/Screens/authentification/sign_page.dart';
import 'package:crypto_app/Screens/onboarding_page.dart';
import 'package:crypto_app/services/authentification_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  final bool? seen;
  const App({Key? key, required this.seen}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AuthenticationService>(
            create: (_) => AuthenticationService(FirebaseAuth.instance)),
        StreamProvider(
            initialData: null,
            create: (context) =>
                context.read<AuthenticationService>().authStateChanges)
      ],
      child: MaterialApp(
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
            headline1: TextStyle(
              color: const Color(0xFF1B232A),
              fontSize: 18.sp,
              fontWeight: FontWeight.w700,
            ),
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
              color: const Color(0xFF777777),
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        home: seen == true ? const Auth() : const OnBoarrding(),
      ),
    );
  }
}

class Auth extends StatelessWidget {
  const Auth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final firebaseUser = context.watch<User?>();
    if (firebaseUser != null) {
      return const Home();
    }
    return Sign();
  }
}

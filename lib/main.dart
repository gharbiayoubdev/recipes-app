import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:foods/Config/provider/global_object.dart';
import 'package:foods/secreans/Auth/auth_secrean.dart';
import 'package:foods/secreans/auth/signin_page.dart';
import 'package:foods/secreans/auth/signup_Page.dart';
import 'package:foods/Config/provider/authentication_service.dart';
import 'package:foods/secreans/switcher/switchers_page.dart';
import 'package:provider/provider.dart';
import 'Config/firebase/firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AuthenticationService>(
          create: (_) => AuthenticationService(FirebaseAuth.instance),
        ),
        StreamProvider(
          create: (context) =>
              context.read<AuthenticationService>().authStateChanges, initialData: null,
        ),
        ChangeNotifierProvider(create: (gobj) => GlobalValues())
      ],
      child: MaterialApp(
        title: 'Foods',
        theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute: '/',
        routes: {
          "/signIn": (context) => AuthenticationWrapper(),
          "/signUp": (context) => RegisterPage(),
        },
        home: SwitcherPage() , //AuthSecrean(),
      ),
    );
  }
}
class AuthenticationWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final firebaseUser = context.watch<User?>();

    if (firebaseUser != null) {
      return SwitcherPage();
    }
    return  LoginPage();
  }
}

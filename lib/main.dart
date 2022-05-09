import 'package:flutter/material.dart';
import "package:firebase_auth/firebase_auth.dart";
import "package:firebase_core/firebase_core.dart";
import "package:provider/provider.dart";
import "Main/Main.dart";

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();

  Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        StreamProvider.value(value: FirebaseAuth.instance.authStateChanges(), initialData: null,)
      ],
      child: MaterialApp(
        home: Main(),
        debugShowCheckedModeBanner: false,
      )
    );
  }
}


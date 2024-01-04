import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:wheelz_web/dashboard/side_navigation_drawer.dart';



// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(const MyApp());
// }
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyDksvMhA4_p6QKdA_Kyu8LiOmrPdx3b8tE",
        authDomain: "wheelz-dce67.firebaseapp.com",
        databaseURL: "https://wheelz-dce67-default-rtdb.firebaseio.com",
        projectId: "wheelz-dce67",
        storageBucket: "wheelz-dce67.appspot.com",
        messagingSenderId: "547102469282",
        appId: "1:547102469282:web:1b5bfaef07da400360bbfb",
        measurementId: "G-H6K2TKH6R2"),
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Admin Panel',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const SideNavigationDrawer(),
    );
  }
}

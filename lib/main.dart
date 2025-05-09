import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:mobile_e_learning_app/Login/before_login.dart';
import 'package:mobile_e_learning_app/admin/admin_dashboard.dart';
import 'screens/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // <-- important!
  await Firebase.initializeApp(); // <-- wait for Firebase ready
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Learning App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true, // ✅ enable Material 3 modern UI
      ),
      home:BeforeLogin(),
    );
  }
}

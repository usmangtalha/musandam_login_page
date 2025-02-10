import 'package:flutter/material.dart';
import 'package:musandam_1/google_login.dart';
import 'package:musandam_1/buttons.dart';
import 'package:musandam_1/main.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void logOut() async {
    await GoogleLogin.signOut();
    if(mounted){
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => LoginPage(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                foregroundImage: NetworkImage(GoogleLogin.user?.photoURL ?? ''),
              ),
              Text(
                GoogleLogin.user?.displayName ?? '',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Text(
                GoogleLogin.user?.email ?? '',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              LogBtn(
                setState: logOut,
                textLog: 'LogOut',
                width: 115,
                height: 45,
                color: Colors.red,
                fontSize: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:musandam_1/google_login.dart';
import 'package:musandam_1/home_page.dart';

class ForgotPasswordBtn extends StatelessWidget {
  const ForgotPasswordBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 15),
      alignment: Alignment.centerRight,
      child: GestureDetector(
        onTap: () {
          debugPrint('Forgot button is pressed!');
        },
        child: Text(
          'Forgot Password',
          style: TextStyle(
            fontSize: 17,
            color: Colors.lightBlue,
          ),
        ),
      ),
    );
  }
}

class LogBtn extends StatelessWidget {
  final void Function() setState;
  final String textLog;
  final double? width;
  final double? height;
  final Color? color;
  final double? fontSize;

  const LogBtn({
    Key? key,
    required this.setState,
    required this.textLog,
    this.width,
    this.height,
    this.color,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 130,
      height: height ?? 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color ?? Colors.lightBlue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: setState,
        child: Text(
          textLog,
          style: TextStyle(
            fontSize: fontSize ?? 24,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class GoogleBtn extends StatelessWidget {
  const GoogleBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      child: GestureDetector(
        onTap: () async {
          debugPrint('Google button is pressed');
          try {
            final user = await GoogleLogin.loginWithGoogle();
            if (user != null) {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => const HomePage(),
                ),
              );
            }
          } on FirebaseAuthException catch (error) {
            print(error.message);
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  error.message ?? 'Something went wrong!',
                ),
              ),
            );
          } catch (error) {
            print(error);
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  error.toString(),
                ),
              ),
            );
          }
        },
        child: Image.asset(
          'images/google.png',
          width: 50,
          height: 50,
        ),
      ),
    );
  }
}

class RegisterBtn extends StatelessWidget {
  const RegisterBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        debugPrint('Register button is pressed!');
      },
      child: Text(
        'Register',
        style: TextStyle(
          fontSize: 18,
          color: Colors.lightGreen,
          decoration: TextDecoration.underline,
          decorationColor: Colors.lightGreen,
        ),
      ),
    );
  }
}

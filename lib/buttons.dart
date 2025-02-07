import 'package:flutter/material.dart';

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

class LoginBtn extends StatelessWidget {

  final void Function() setstate;

  const LoginBtn({
    Key? key,
    required this.setstate,
});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 130,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.lightBlue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            )),
        onPressed: setstate,
        child: Text(
          'Login',
          style: TextStyle(
            fontSize: 24,
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
        onTap: () {
          debugPrint('Google button is pressed');
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

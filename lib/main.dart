import 'package:flutter/material.dart';
import 'textfield.dart';
import 'texts.dart';
import 'buttons.dart';

void main() {
  runApp(const LoginPage());
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginContent(),
    );
  }
}

class LoginContent extends StatefulWidget {
  const LoginContent({super.key});

  @override
  State<LoginContent> createState() => _LoginContentState();
}

class _LoginContentState extends State<LoginContent> {
  final formKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  void printValue() {
    if (formKey.currentState!.validate()) {
      String email = emailController.text;
      String password = passwordController.text;

      debugPrint('Email : $email');
      debugPrint('Password : $password');

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Email : $email \n Password: $password'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFFAFAFA),
      body: SafeArea(
        child: Form(
          key: formKey,
          child: Stack(
            children: [
              BackgroundImage(),
              SingleChildScrollView(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 45),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TopItems(),
                        EmailBox(controller: emailController,),
                        PasswordBox(controller: passwordController),
                        ForgotPasswordBtn(),
                        LoginBtn(setstate: printValue,),
                        GoogleBtn(),
                        BottomRow(),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

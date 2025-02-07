import 'package:flutter/material.dart';
import 'textfield.dart';
import 'buttons.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Image.asset(
        'images/top_lines.png',
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.3,
        fit: BoxFit.cover,
      ),
    );
  }
}


class TopItems extends StatelessWidget {
  const TopItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Login',
          style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
              color: Colors.lightBlue),
        ),
        Text(
          'Welcome',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.lightGreen,
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
          child: Text(
            'Login to your existing account',
            style: TextStyle(
              fontSize: 18,
              color: Colors.lightGreen,
            ),
          ),
        ),
      ],
    );
  }
}

class EmailBox extends StatefulWidget {
  final TextEditingController controller;


  const EmailBox({super.key,required this.controller});

  @override
  State<EmailBox> createState() => _EmailBoxState();
}

class _EmailBoxState extends State<EmailBox> {
  final formKey = GlobalKey<FormState>();

  bool isPasswordVisible = true;

  @override
  Widget build(BuildContext context) {
    return LoginField(
      text: 'Email',
      icon: Icons.email_rounded,
      obscure: false,
      controller: widget.controller,
      validator: (value) {
        if (value == null || value.trim().isEmpty) {
          return "Email is required";
        }
        if (!RegExp(
            r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$')
            .hasMatch(value)) {
          return "Enter a valid email";
        }
        return null;
      },
    );
  }
}

class PasswordBox extends StatefulWidget {

  final TextEditingController controller;

  const PasswordBox({super.key,required this.controller});

  @override
  State<PasswordBox> createState() => _PasswordBoxState();
}

class _PasswordBoxState extends State<PasswordBox> {

  final formKey = GlobalKey<FormState>();
  bool isPasswordVisible = true;

  @override
  Widget build(BuildContext context) {
    return LoginField(
      text: 'Password',
      icon: Icons.lock_rounded,
      obscure: !isPasswordVisible,
      controller: widget.controller,
      isPassword: true,
      toggleVisibility: () {
        setState(() {
          isPasswordVisible = !isPasswordVisible;
        });
      },
      validator: (value) {
        if (value == null || value.trim().isEmpty) {
          return 'Password is required';
        }
        if (value.length < 6) {
          return 'Password must be at least 6 character';
        }
        return null;
      },
    );
  }
}


class BottomRow extends StatelessWidget {
  const BottomRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Don\'t have an account?',
          style: TextStyle(
            fontSize: 17,
            color: Colors.lightBlue,
          ),
        ),
        RegisterBtn(),
      ],
    );
  }
}


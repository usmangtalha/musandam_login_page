import 'package:flutter/material.dart';

class LoginField extends StatelessWidget {
  final String? text;
  final IconData? icon;
  final bool obscure;
  final TextEditingController controller;
  final VoidCallback? toggleVisibility;
  final bool isPassword;
  final String? Function(String?)? validator;

  const LoginField({
    Key? key,
    required this.text,
    required this.icon,
    required this.obscure,
    required this.controller,
    this.validator,
    this.toggleVisibility,
    this.isPassword = false,
  }) : super(key: key);

  OutlineInputBorder customBorder(
    Color color,
    double width,
  ) =>
      OutlineInputBorder(
        borderSide: BorderSide(color: color, width: width),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(35),
          bottomRight: Radius.circular(35),
          topRight: Radius.circular(15),
          bottomLeft: Radius.circular(15),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 0,
      ),
      child: TextFormField(
        controller: controller,
        obscureText: obscure,
        validator: validator,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          prefixIcon: Icon(
            icon,
            color: Colors.grey,
          ),
          suffixIcon: isPassword
              ? IconButton(
                  icon: Icon(
                    obscure
                        ? Icons.visibility_off_rounded
                        : Icons.visibility_rounded,
                    color: Colors.grey,
                  ),
                  onPressed: toggleVisibility,
                )
              : null,
          hintText: text!,
          hintStyle: TextStyle(
            color: Colors.grey,
            fontSize: 16,
          ),
          border: customBorder(Colors.lightBlue, 1),
          enabledBorder: customBorder(Colors.lightBlue, 1),
          focusedBorder: customBorder(Colors.blue, 1),
          errorBorder: customBorder(Colors.red, 1),
          focusedErrorBorder: customBorder(Colors.red, 1),
        ),
      ),
    );
  }
}

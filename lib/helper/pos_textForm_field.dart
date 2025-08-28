import 'package:flutter/material.dart';
import 'style.dart';

class PosTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final String? label;
  final IconData? icon;
  final Widget? suffixIcon;
  final bool obscureText;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;

  const PosTextFormField({
    super.key,
    this.controller,
    this.hintText,
    this.label,
    this.icon,
    this.suffixIcon,
    this.obscureText = false,
    this.validator,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      validator: validator,
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: label,
        prefixIcon: icon != null ? Icon(icon, color: Colors.deepPurple) : null,
        suffixIcon: suffixIcon,
        fillColor: AppColors.background,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}

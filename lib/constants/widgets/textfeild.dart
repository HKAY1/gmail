import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../theme/theme.dart';
import '../colors.dart';

class AppTextField extends StatelessWidget {
  final Function(String)? onChanged;
  final void Function(String?)? onSaved;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final bool obscureText;
  final bool readOnly;
  final String? hintText;
  final Widget? label;
  final TextStyle? labelStyle;
  final List<TextInputFormatter>? inputFormatters;
  final Widget? prefix;
  final Color? color;
  final Widget? suffix;
  final BorderRadius radius;
  final bool isborderNeeded;
  final int? maxLines;
  final int? maxLength;

  const AppTextField({
    super.key,
    this.onChanged,
    this.validator,
    this.keyboardType,
    this.controller,
    this.obscureText = false,
    this.readOnly = false,
    this.hintText,
    this.label,
    this.labelStyle,
    this.inputFormatters,
    this.prefix,
    this.color,
    this.suffix,
    required this.radius,
    required this.isborderNeeded,
    this.onSaved,
    this.maxLines = 1,
    this.maxLength = 1,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      readOnly: readOnly,
      onChanged: onChanged,
      onSaved: onSaved,
      maxLines: maxLines,
      // maxLength: maxLength,
      style: AppTheme.bodyText2.copyWith(color: AppColors.black),
      keyboardType: keyboardType,
      controller: controller,
      obscureText: obscureText,
      inputFormatters: inputFormatters,
      cursorColor: AppColors.darkSkyBlue,
      showCursor: true,
      validator: validator,
      decoration: InputDecoration(
        prefixIcon: prefix,
        suffixIcon: suffix,
        // errorText: validateno(controller.toString()),
        border: (isborderNeeded)
            ? OutlineInputBorder(
                borderSide:
                    const BorderSide(color: AppColors.darkSkyBlue, width: 0.1),
                borderRadius: radius,
              )
            : const UnderlineInputBorder(
                borderSide: BorderSide(color: AppColors.grey300, width: 0.1)),
        focusedBorder: (isborderNeeded)
            ? OutlineInputBorder(
                borderSide:
                    const BorderSide(color: AppColors.darkSkyBlue, width: 0.1),
                borderRadius: radius,
              )
            : const UnderlineInputBorder(
                borderSide:
                    BorderSide(color: AppColors.darkSkyBlue, width: 0.1)),
        enabledBorder: (isborderNeeded)
            ? OutlineInputBorder(
                borderSide:
                    const BorderSide(color: AppColors.darkSkyBlue, width: 0.1),
                borderRadius: radius,
              )
            : const UnderlineInputBorder(
                borderSide: BorderSide(color: AppColors.grey300, width: 0.1)),
        errorBorder: (isborderNeeded)
            ? OutlineInputBorder(
                borderSide: const BorderSide(color: AppColors.red, width: 0.1),
                borderRadius: radius,
              )
            : const UnderlineInputBorder(
                borderSide: BorderSide(color: AppColors.red, width: 0.1)),
        // hoverColor: AppColors.lightGrey,
        filled: true,
        fillColor: color ?? AppColors.lightGrey,
        label: label,
        labelStyle: labelStyle ??
            AppTheme.bodyText1.copyWith(
              color: AppColors.grey300,
            ),
        hintText: hintText,
        hintStyle: AppTheme.bodyText1.copyWith(
          color: AppColors.grey300,
        ),
      ),
    );
  }
}

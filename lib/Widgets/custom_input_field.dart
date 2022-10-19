import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIconn;
  final String? inpuType;
  final bool obscureText;

  final String formProperty;
  final Map<String, String> formValues;

  const CustomInputField({
    Key? key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.icon,
    this.suffixIconn,
    this.inpuType,
    this.obscureText = false,
    required this.formProperty,
    required this.formValues,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        autofocus: false,
        initialValue: '',
        textCapitalization: TextCapitalization.words,
        // ignore: unrelated_type_equality_checks
        keyboardType: inpuType == 'email'
            ? TextInputType.emailAddress
            : TextInputType.text,
        obscureText: obscureText,
        onChanged: (value) {
          formValues[formProperty] = value;
        },
        validator: (value) {
          if (value == null) return 'Este campo es requerido';
          return value.length < 3 ? 'Minimo 3 letras' : null;
        },
        autovalidateMode: AutovalidateMode.onUserInteraction,
        // ignore: prefer_const_constructors
        decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText,
          helperText: helperText,
          // prefix: const Icon(Icons.ac_unit_outlined),
          suffixIcon: suffixIconn == null ? null : Icon(suffixIconn),
          icon: icon == null ? null : Icon(icon),
          // focusedBorder: OutlineInputBorder(
          //     borderSide: BorderSide(color: AppTheme.primary)),
          // border: const OutlineInputBorder(
          //     borderRadius: BorderRadius.only(
          //         bottomLeft: Radius.circular((10)),
          //         topRight: Radius.circular(10)))
          // counterText:
        ));
  }
}

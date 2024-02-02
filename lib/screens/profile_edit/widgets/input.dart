import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  final String label;
  final String? hintText;
  final AutovalidateMode? autovalidateMode;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final void Function(String?)? onSaved;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final String? initialValue;
  final void Function(String)? onChanged;

  const Input({
    super.key,
    required this.label,
    this.hintText,
    this.autovalidateMode,
    this.keyboardType,
    this.textInputAction,
    this.onSaved,
    this.validator,
    this.controller,
    this.initialValue,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            child: Text(label),
          ),
        ),
        Expanded(
          flex: 3,
          child: Padding(
            padding: const EdgeInsets.only(left: 8, right: 16),
            child: TextFormField(
              controller: controller,
              initialValue: initialValue,
              validator: validator,
              autovalidateMode: autovalidateMode,
              keyboardType: keyboardType,
              textInputAction: textInputAction,
              style: const TextStyle(
                fontSize: 14,
                color: Color(0xFF262626),
              ),
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: TextStyle(
                  fontSize: 14,
                  color: Colors.black.withOpacity(0.2),
                ),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 0,
                  vertical: 14,
                ),
                focusedBorder: UnderlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: const BorderSide(
                    color: Color(0xFF3797EF),
                    width: 1,
                  ),
                ),
                border: UnderlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(
                    color: const Color(0xFF000000).withOpacity(0.1),
                    width: 1,
                  ),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(
                    color: const Color(0xFF000000).withOpacity(0.1),
                    width: 1,
                  ),
                ),
                disabledBorder: UnderlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(
                    color: const Color(0xFF000000).withOpacity(0.1),
                    width: 1,
                  ),
                ),
                errorBorder: UnderlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: const BorderSide(
                    color: Colors.redAccent,
                    width: 1,
                  ),
                ),
                focusedErrorBorder: UnderlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: const BorderSide(
                    color: Color(0xFF3797EF),
                    width: 1,
                  ),
                ),
              ),
              onChanged: onChanged,
              onSaved: onSaved,
            ),
          ),
        )
      ],
    );
  }
}

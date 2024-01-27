import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FormLogin extends StatefulWidget {
  const FormLogin({super.key});

  @override
  State<FormLogin> createState() => _FormLoginState();
}

class _FormLoginState extends State<FormLogin> {
  final _formKey = GlobalKey<FormState>();

  String? _username;
  String? _password;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your username';
              }
              return null;
            },
            autovalidateMode: AutovalidateMode.onUserInteraction,
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.next,
            style: const TextStyle(
              fontSize: 14,
              color: Color(0xFF262626),
            ),
            decoration: InputDecoration(
              filled: true,
              fillColor: const Color(0xFFFAFAFA),
              hintText: 'Username',
              hintStyle: TextStyle(
                fontSize: 14,
                color: Colors.black.withOpacity(0.2),
              ),
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 13.5,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: const BorderSide(
                  color: Color(0xFF3797EF),
                  width: 1,
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(
                  color: const Color(0xFF000000).withOpacity(0.1),
                  width: 1,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(
                  color: const Color(0xFF000000).withOpacity(0.1),
                  width: 1,
                ),
              ),
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(
                  color: const Color(0xFF000000).withOpacity(0.1),
                  width: 1,
                ),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: const BorderSide(
                  color: Colors.redAccent,
                  width: 1,
                ),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: const BorderSide(
                  color: Color(0xFF3797EF),
                  width: 1,
                ),
              ),
            ),
            onSaved: (value) {
              _username = value;
            },
          ),
          const SizedBox(height: 12),
          TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your password';
              }
              return null;
            },
            autovalidateMode: AutovalidateMode.onUserInteraction,
            obscureText: true,
            obscuringCharacter: '●',
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.done,
            decoration: InputDecoration(
              hintText: 'Password',
              hintStyle: TextStyle(
                fontSize: 14,
                color: Colors.black.withOpacity(0.2),
              ),
              fillColor: const Color(0xFFFAFAFA),
              filled: true,
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 13.5,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(
                  color: const Color(0xFF000000).withOpacity(0.1),
                  width: 1,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: const BorderSide(
                  color: Color(0xFF3797EF),
                  width: 1,
                ),
              ),
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(
                  color: const Color(0xFF000000).withOpacity(0.1),
                  width: 1,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(
                  color: const Color(0xFF000000).withOpacity(0.1),
                  width: 1,
                ),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: const BorderSide(
                  color: Colors.redAccent,
                  width: 1,
                ),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: const BorderSide(
                  color: Color(0xFF3797EF),
                  width: 1,
                ),
              ),
            ),
            onSaved: (value) {
              _password = value;
            },
          ),
          const SizedBox(height: 19),
          const Text(
            "Forgot password?",
            style: TextStyle(
              color: Color(0xFF3797EF),
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 44,
            width: double.infinity,
            child: ElevatedButton(
              style: FilledButton.styleFrom(
                backgroundColor: const Color(0xFF3797EF),
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  ScaffoldMessenger.of(context)
                      .showSnackBar(
                        SnackBar(
                          content: Text(
                            'Tên đăng nhập: $_username\nMật khẩu: $_password',
                          ),
                        ),
                      )
                      .closed
                      .then(
                    (SnackBarClosedReason reason) {
                      _formKey.currentState!.reset();
                    },
                  );
                }
              },
              child: const Text(
                'Log in',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            width: double.infinity,
            child: TextButton.icon(
              onPressed: () {},
              icon: SvgPicture.asset(
                "assets/icons/fb_icon.svg",
                width: 17,
                height: 17,
              ),
              label: const Text(
                "Log in with Facebook",
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF3797EF),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          const SizedBox(height: 40),
          Row(children: [
            Expanded(
              child: Container(
                height: 0.5,
                color: Colors.black.withOpacity(0.2),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30.5),
              child: Text(
                "OR",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black.withOpacity(0.4),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: 0.5,
                color: Colors.black.withOpacity(0.2),
              ),
            ),
          ]),
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Don’t have an account?",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black.withOpacity(0.4),
                ),
              ),
              const SizedBox(width: 4),
              GestureDetector(
                onTap: () {},
                child: const Text(
                  "Sign up.",
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF3797EF),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}

import 'package:career_academy/core/constant/auth/auth_screen/register_screen/register_screen.dart';
import 'package:career_academy/core/constant/colors/colors.dart';
import 'package:career_academy/core/constant/strings/string.dart';
import 'package:career_academy/core/constant/text_style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Login extends StatefulWidget {
  Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final formkey = GlobalKey<FormState>();

  final TextEditingController email = TextEditingController();

  final TextEditingController password = TextEditingController();

  bool _obscureText = true;

  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return "Enter your email";
    }

    String pattern = r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';
    RegExp regex = RegExp(pattern);
    if (!regex.hasMatch(value)) {
      return "Enter a valid email address";
    }
    return null;
  }

  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return "Enter your password";
    }
    if (value.length < 8) {
      return "Password must be at least 6 characters";
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainblue,
        title: Row(
          children: [
            Image.asset('$staticAssets/logo.png', scale: 5.8),
            SizedBox(width: 10.w),
            Text('Career Academy', style: style23B),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 70),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Welcome back!\nDiscover your Direction', style: style22B),
              SizedBox(height: 35.h),
              Form(
                key: formkey,
                child: Column(
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      cursorColor: mainblue,
                      maxLines: 1,
                      controller: email,
                      decoration: InputDecoration(
                        fillColor: textformdolor,
                        filled: true,
                        hintText: 'Enter your email',
                        hintStyle: style14,
                        border: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                      ),
                      validator: validateEmail,
                    ),
                    SizedBox(height: 20.h),

                    // Password Field with Validation
                    TextFormField(
                      cursorColor: mainblue,
                      keyboardType: TextInputType.text,
                      maxLines: 1,
                      controller: password,
                      obscureText: _obscureText,
                      decoration: InputDecoration(
                        fillColor: textformdolor,
                        suffixIcon: IconButton(
                          icon: Icon(
                            _obscureText
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: Colors.grey,
                          ),
                          onPressed: () {
                            setState(() {
                              _obscureText = !_obscureText;
                            });
                          },
                        ),
                        filled: true,
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        hintText: 'Enter your password',
                        hintStyle: style14,
                      ),
                      validator: validatePassword,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.h),

              // Forgot Password
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text('Forgot Password?', style: style16),
                  ),
                ],
              ),
              SizedBox(height: 20.h),

              // Login Button with Validation Check
              GestureDetector(
                onTap: () {
                  if (formkey.currentState!.validate()) {
                    // Proceed with login if validation passes
                    print("Email: ${email.text}, Password: ${password.text}");
                  }
                },
                child: Container(
                  height: 48.h,
                  width: 375.h,
                  decoration: BoxDecoration(
                    color: mainblue,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Center(child: Text('Login', style: style16B)),
                ),
              ),
              SizedBox(height: 200.h),

              // Register Option
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Don’t have an account?'),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RegisterScreen(),
                        ),
                      );
                    },
                    child: Text('Register Now', style: style16),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

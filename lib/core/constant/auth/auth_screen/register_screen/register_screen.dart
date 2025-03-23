import 'package:career_academy/core/constant/colors/colors.dart';
import 'package:career_academy/core/constant/strings/string.dart';
import 'package:career_academy/core/constant/text_style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final formkey = GlobalKey<FormState>();
  final TextEditingController firstname = TextEditingController();
  final TextEditingController lastname = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController createpassword = TextEditingController();
  final TextEditingController confirmpassword = TextEditingController();
  final TextEditingController whichschool = TextEditingController();
  final TextEditingController whichgrade = TextEditingController();
  bool _obscureText = true;
  var selected = 2;

  String? validateFirstname(String? value) {
    if (value == null || value.isEmpty) {
      return "Enter your email";
    }

    String pattern = r'abcdefghijklmnopqrstuvwxyz';
    RegExp regex = RegExp(pattern);
    if (!regex.hasMatch(value)) {
      return "Enter a valid email address";
    }
    return null;
  }

  String? validateLastname(String? value) {
    if (value == null || value.isEmpty) {
      return "Enter your email";
    }

    String pattern = r'abcdefghijklmnopqrstuvwxyz';
    RegExp regex = RegExp(pattern);
    if (!regex.hasMatch(value)) {
      return "Enter a valid email address";
    }
    return null;
  }

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

  String? validateCreatepassword(String? value) {
    if (value == null || value.isEmpty) {
      return "Enter your password";
    }
    if (value.length < 8) {
      return "Password must be at least 6 characters";
    }
    return null;
  }

  String? validateConfirmpassword(String? value) {
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
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Create your account', style: style20B),
              SizedBox(height: 20.h),
              Form(
                key: formkey,
                child: Column(
                  children: [
                    TextFormField(
                      cursorColor: mainblue,
                      keyboardType: TextInputType.text,
                      maxLines: 1,
                      controller: firstname,
                      decoration: InputDecoration(
                        fillColor: textformdolor,
                        filled: true,
                        hintText: 'First name',
                        hintStyle: style14,
                        border: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                      ),
                      validator: validateFirstname,
                    ),
                    SizedBox(height: 15.h),
                    TextFormField(
                      cursorColor: mainblue,
                      keyboardType: TextInputType.text,
                      maxLines: 1,
                      controller: lastname,
                      decoration: InputDecoration(
                        fillColor: textformdolor,
                        filled: true,
                        hintText: 'Last name',
                        hintStyle: style14,
                        border: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                      ),
                      validator: validateLastname,
                    ),
                    SizedBox(height: 15.h),
                    TextFormField(
                      cursorColor: mainblue,
                      keyboardType: TextInputType.emailAddress,
                      maxLines: 1,
                      controller: email,
                      decoration: InputDecoration(
                        fillColor: textformdolor,
                        filled: true,
                        hintText: 'Email',
                        hintStyle: style14,
                        border: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                      ),
                      validator: validateEmail,
                    ),
                    SizedBox(height: 15.h),

                    // Password Field with Validation
                    TextFormField(
                      cursorColor: mainblue,
                      keyboardType: TextInputType.text,
                      maxLines: 1,
                      controller: createpassword,
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
                        hintText: 'Create Password',
                        hintStyle: style14,
                      ),
                      validator: validateCreatepassword,
                    ),

                    SizedBox(height: 15.h),
                    TextFormField(
                      cursorColor: mainblue,
                      keyboardType: TextInputType.text,
                      maxLines: 1,
                      controller: confirmpassword,
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
                        hintText: 'Confirm your Password',
                        hintStyle: style14,
                      ),
                      validator: validateConfirmpassword,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15.h),
              Text(
                'Are you currently attending secondary school?',
                style: style14regular,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,

                children: [
                  Radio(
                    activeColor: mainblue,
                    value: 0,
                    groupValue: selected,
                    onChanged: (val) {
                      setState(() {
                        selected = val!;
                      });
                    },
                  ),
                  Text('Yes'),
                  SizedBox(width: 30.w),
                  Radio(
                    activeColor: mainblue,
                    value: 1,
                    groupValue: selected,
                    onChanged: (val) {
                      setState(() {
                        selected = val!;
                        print('hello abd');
                      });
                    },
                  ),
                  Text('No'),
                ],
              ),
              TextFormField(
                cursorColor: mainblue,
                keyboardType: TextInputType.text,
                maxLines: 1,
                controller: whichschool,
                decoration: InputDecoration(
                  fillColor: textformdolor,
                  filled: true,
                  hintText: 'Which School',
                  hintStyle: style14,
                  border: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
              ),
              SizedBox(height: 15.h),
              TextFormField(
                cursorColor: mainblue,
                keyboardType: TextInputType.text,
                maxLines: 1,
                controller: whichgrade,
                decoration: InputDecoration(
                  fillColor: textformdolor,
                  filled: true,
                  hintText: 'Which Grade',
                  hintStyle: style14,
                  border: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

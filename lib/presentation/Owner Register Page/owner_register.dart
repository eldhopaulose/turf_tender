import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:turf_tender/presentation/User%20Register%20page/widgets/user_owner_avatar.dart';

class OwnerRegister extends StatefulWidget {
  const OwnerRegister({super.key});

  @override
  State<OwnerRegister> createState() => _OwnerRegisterState();
}

class _OwnerRegisterState extends State<OwnerRegister> {
  bool _obscureText = true;
  TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25, top: 30).r,
                  child: Container(
                    height: 40.h,
                    width: 150.w,
                    child: Text(
                      'REGISTER',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25.sp,
                        fontFamily: 'Fira Sans Extra Condensed',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25).r,
                  child: Container(
                      height: 17.h,
                      width: 150.w,
                      child: Text(
                        'Choose Avatar',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.sp,
                          fontFamily: 'Fira Sans Condensed',
                          fontWeight: FontWeight.w400,
                        ),
                      )),
                ),
              ],
            ),
            SizedBox(height: 24.h),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15).w,
                    child: UserOwnerAvathar(
                      imagePath: 'images/boy1 1.png',
                    ),
                  ),
                  UserOwnerAvathar(
                    imagePath: 'images/girl1 1.png',
                  ),
                  UserOwnerAvathar(
                    imagePath: 'images/boy2 1.png',
                  ),
                  UserOwnerAvathar(
                    imagePath: 'images/girl2 1.png',
                  ),
                  UserOwnerAvathar(
                    imagePath: 'images/avathar2.png',
                  ),
                  UserOwnerAvathar(
                    imagePath: 'images/avathar1.png',
                  ),
                ],
              ),
            ),
            SizedBox(height: 25.h),
            SizedBox(
              height: 59.h,
              width: 356.w,
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 18).w,
                child: TextField(
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17.sp,
                    fontFamily: 'Fira Sans Condensed',
                    fontWeight: FontWeight.w400,
                  ),
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp(r"[a-zA-Z]")),
                  ],
                  decoration: InputDecoration(
                      fillColor: Color(0xFFF2F2F2),
                      labelText: 'Name',
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(10).w))),
                ),
              ),
            ),
            SizedBox(height: 10.h),
            SizedBox(
              height: 59.h,
              width: 356.w,
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 18).w,
                child: TextField(
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17.sp,
                    fontFamily: 'Fira Sans Condensed',
                    fontWeight: FontWeight.w400,
                  ),
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp(r"[0-9]")),
                  ],
                  decoration: InputDecoration(
                      fillColor: Color(0xFFF2F2F2),
                      labelText: 'Mobile number',
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(10).w))),
                ),
              ),
            ),
            SizedBox(height: 10.h),
            SizedBox(
              height: 59.h,
              width: 356.w,
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 18).w,
                child: TextField(
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17.sp,
                    fontFamily: 'Fira Sans Condensed',
                    fontWeight: FontWeight.w400,
                  ),
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp(r"[a-zA-Z0-9@.]")),
                  ],
                  decoration: InputDecoration(
                      fillColor: Color(0xFFF2F2F2),
                      labelText: 'Email',
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(10).w))),
                ),
              ),
            ),
            SizedBox(height: 10.h),
            SizedBox(
              height: 59.h,
              width: 356.w,
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 18).w,
                child: TextField(
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17.sp,
                    fontFamily: 'Fira Sans Condensed',
                    fontWeight: FontWeight.w400,
                  ),
                  decoration: InputDecoration(
                      fillColor: Color(0xFFF2F2F2),
                      labelText: 'Address',
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(10).w))),
                ),
              ),
            ),
            SizedBox(height: 10.h),
            SizedBox(
              height: 59.h,
              width: 356.w,
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 18).w,
                child: TextField(
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17.sp,
                    fontFamily: 'Fira Sans Condensed',
                    fontWeight: FontWeight.w400,
                  ),
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp(r"[a-zA-Z]")),
                  ],
                  decoration: InputDecoration(
                      fillColor: Color(0xFFF2F2F2),
                      labelText: 'District',
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(10).w))),
                ),
              ),
            ),
            SizedBox(height: 10.h),
            SizedBox(
              height: 59.h,
              width: 356.w,
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 18).w,
                child: TextField(
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17.sp,
                    fontFamily: 'Fira Sans Condensed',
                    fontWeight: FontWeight.w400,
                  ),
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp(r"[0-9]")),
                  ],
                  decoration: InputDecoration(
                      fillColor: Color(0xFFF2F2F2),
                      labelText: 'Pin Code',
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(10).w))),
                ),
              ),
            ),
            SizedBox(height: 10.h),
            SizedBox(
              height: 59.h,
              width: 356.w,
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 18).r,
                child: TextField(
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.sp,
                    fontFamily: 'Fira Sans Condensed',
                    fontWeight: FontWeight.w500,
                  ),
                  controller: _passwordController,
                  obscureText: _obscureText,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    labelText: "Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10).w,
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _obscureText ? Icons.visibility_off : Icons.visibility,
                        color: Colors.grey,
                      ),
                      onPressed: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 45.h),
            SizedBox(
              height: 59.h,
              width: 356.w,
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 18).r,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10).w),
                        backgroundColor: Color(0xFF3792C4),
                        foregroundColor: Colors.white),
                    onPressed: () {
                      print('owner otp snd tapped');
                    },
                    child: Text(
                      'SEND OTP',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: 'Fira Sans Condensed',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    )),
              ),
            ),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }

  void updatePasswordText() {
    if (_obscureText) {
      _passwordController.text =
          '*'.padRight(_passwordController.text.length, '*');
    }
  }
}

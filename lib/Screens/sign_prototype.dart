import 'package:crypto_app/widgets/Button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignScreen extends StatefulWidget {
  final int type;
  final String text;
  const SignScreen({Key? key, required this.type, required this.text})
      : super(key: key);

  @override
  _SignScreenState createState() => _SignScreenState();
}

class _SignScreenState extends State<SignScreen> {
  bool hide_password = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(24.w, 40.h, 24.w, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.text,
            style: TextStyle(
              color: const Color(0xFFFFFFFF),
              fontSize: 32.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 44.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Email',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2
                      ?.copyWith(color: const Color(0xFFA7AFB7)),
                ),
                Text(
                  widget.type == 0
                      ? 'Sign in with mobile'
                      : 'Register with mobile',
                  style: TextStyle(
                    color: const Color(0xFF5ED5A8),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 12.h),
            child: TextFormField(
              style: Theme.of(context).textTheme.bodyText2,
              decoration: InputDecoration(
                hintText: widget.type == 0
                    ? 'Enter your email'
                    : 'Please enter email',
                hintStyle: Theme.of(context).textTheme.bodyText2,
                filled: true,
                fillColor: const Color(0xFF161C22),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.r),
                    borderSide: BorderSide.none),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 30.h),
            child: Text(
              'Password',
              style: Theme.of(context)
                  .textTheme
                  .bodyText2
                  ?.copyWith(color: const Color(0xFFA7AFB7)),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 12.h),
            child: TextFormField(
              obscureText: hide_password,
              style: Theme.of(context).textTheme.bodyText2,
              decoration: InputDecoration(
                suffix: GestureDetector(
                  onTap: () {
                    setState(() {
                      if (hide_password == true) {
                        hide_password = false;
                      } else {
                        hide_password = true;
                      }
                    });
                  },
                  child: const Text('show'),
                ),
                hintText: widget.type == 0
                    ? 'Enter your password'
                    : 'Please enter password',
                hintStyle: Theme.of(context).textTheme.bodyText2,
                filled: true,
                fillColor: const Color(0xFF161C22),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.r),
                    borderSide: BorderSide.none),
              ),
            ),
          ),
          widget.type == 0
              ? Padding(
                  padding: EdgeInsets.only(top: 8.h),
                  child: Text(
                    'Forgot password?',
                    style: TextStyle(
                      color: const Color(0xFF5ED5A8),
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                )
              : Container(),
          Button(
            top: 40.h,
            height: 54.h,
            width: 366.w,
            radius: 16.r,
            color: const Color(0xFF5ED5A8),
            widget: Text(
              widget.type == 0 ? 'Sign in' : 'Sign up',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  ?.copyWith(color: const Color(0xFF171D22)),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(143.w, 20.h, 143.w, 0),
            child: Text('Or login with',
                style: Theme.of(context).textTheme.bodyText2),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20.h),
            child: Row(
              children: [
                Button(
                  top: 0,
                  height: 54.w,
                  width: 173.w,
                  radius: 16.r,
                  color: const Color(0xFFFFFFFF),
                  widget: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/Facebook.png'),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        'Facebook',
                        style: Theme.of(context).textTheme.bodyText1,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 20.w,
                ),
                Button(
                  top: 0,
                  height: 54.w,
                  width: 173.w,
                  radius: 16.r,
                  color: const Color(0xFFFFFFFF),
                  widget: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/Google.png'),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        'Google',
                        style: Theme.of(context).textTheme.bodyText1,
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

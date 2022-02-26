import 'package:crypto_app/Screens/authentification/sign_prototype.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Sign extends StatefulWidget {
  Sign({Key? key}) : super(key: key);

  @override
  State<Sign> createState() => _SignState();
}

class _SignState extends State<Sign> with SingleTickerProviderStateMixin {
  late TabController _controller;
  int _selectedIndex = 0;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 2, vsync: this);
    _controller.addListener(() {
      setState(() {
        _selectedIndex = _controller.index;
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(24.w, 81.h, 24.w, 0),
                child: Container(
                  decoration: BoxDecoration(
                      color: const Color(0xFF161C22),
                      borderRadius: BorderRadius.circular(12.r)),
                  height: 46.h,
                  width: 366.w,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(4.w, 4.h, 4.w, 4.h),
                    child: TabBar(
                      controller: _controller,
                      indicator: BoxDecoration(
                          color: const Color(0xFF1B232A),
                          borderRadius: BorderRadius.circular(12.r)),
                      tabs: [
                        Tab(
                          child: Text(
                            'Sign in',
                            style: _selectedIndex == 0
                                ? Theme.of(context)
                                    .textTheme
                                    .bodyText2
                                    ?.copyWith(color: const Color(0xFFC1C7CD))
                                : Theme.of(context).textTheme.bodyText2,
                          ),
                        ),
                        Tab(
                          child: Text(
                            'Sign up',
                            style: _selectedIndex == 1
                                ? Theme.of(context)
                                    .textTheme
                                    .bodyText2
                                    ?.copyWith(color: const Color(0xFFC1C7CD))
                                : Theme.of(context).textTheme.bodyText2,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: TabBarView(
                  controller: _controller,
                  children: const [
                    SignScreen(type: 0, text: 'Sign in'),
                    SignScreen(type: 1, text: 'Sign up'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

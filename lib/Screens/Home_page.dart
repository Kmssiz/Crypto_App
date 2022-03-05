import 'package:crypto_app/Screens/Home_Screen.dart';
import 'package:crypto_app/constants/constans.dart';
import 'package:flutter/material.dart';
import 'package:crypto_app/Screens/example-page.dart' as page;
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  EdgeInsets get_padding(int i) {
    switch (i) {
      case 0:
        return EdgeInsets.fromLTRB(15.w, 8.h, 0, 17.h);
      case 5:
        return EdgeInsets.fromLTRB(30.w, 8.h, 12.w, 17.h);
      default:
        return EdgeInsets.fromLTRB(30.w, 8.h, 0, 17.h);
    }
  }

  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    final pages = [
      const HomeScreen(),
      const page.Page(indext: 1),
      const page.Page(indext: 2),
      const page.Page(indext: 3),
      const page.Page(indext: 4)
    ];
    return Scaffold(
      body: pages[activeIndex],
      backgroundColor:
          activeIndex == 0 ? Colors.white : Theme.of(context).primaryColor,
      bottomNavigationBar: Padding(
        padding: EdgeInsets.fromLTRB(24.w, 0, 24.w, 24.h),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.r),
            color: const Color(0xFF1B232A),
            boxShadow: [
              BoxShadow(
                  color: const Color(0xFF161C22).withOpacity(0.5),
                  blurRadius: activeIndex == 0 ? 50.r : 10.r,
                  blurStyle: BlurStyle.normal),
            ],
          ),
          width: 366.w,
          height: 76.h,
          child: ListView.builder(
            key: UniqueKey(),
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, i) => Padding(
              padding: get_padding(i),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    activeIndex = i;
                  });
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 250),
                  width: 44.w,
                  height: 44.h,
                  child: Column(
                    children: [
                      Icon(
                        bottomNavIcons[i],
                        color: i == activeIndex
                            ? Theme.of(context).accentColor
                            : const Color(0xFF777777),
                      ),
                      Text(
                        bottomNavText[i],
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2
                            ?.copyWith(fontSize: 12.sp),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

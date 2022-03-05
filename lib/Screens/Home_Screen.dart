import 'package:crypto_app/constants/constans.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 12,
        backgroundColor: const Color(0xFF1B232A),
        shadowColor: const Color(0xFF161C22).withOpacity(0.5),
        leading: Image.asset('assets/Profile_pic.png'),
        actions: [
          Image.asset('assets/search.png'),
          Image.asset('assets/scan.png'),
          Image.asset('assets/notifications.png'),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: ConstrainedBox(
          constraints:
              BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
          child: Column(
            children: [
              GridView.count(
                shrinkWrap: true,
                crossAxisCount: 4,
                children: homeIcons
                    .map(
                      (e) => Container(
                        color: const Color(0xFF1B232A),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              e.assets,
                            ),
                            Text(
                              e.text,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  ?.copyWith(fontSize: 12.sp),
                            )
                          ],
                        ),
                      ),
                    )
                    .toList(),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: const [
                      Card_ui(
                        asset: 'assets/rocket.png',
                        title: 'P2P Trading',
                        desc: 'Bank Transfer, Paypal Revolut...',
                      ),
                      Card_ui(
                        asset: 'assets/card.png',
                        title: 'Credit/Debit Card',
                        desc: 'Bank Transfer, Paypal Revolut...',
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 28.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 24.w),
                          child: Text(
                            'Recent Coin',
                            style: Theme.of(context).textTheme.headline1,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 24.w),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                                children: listCoin
                                    .map(
                                      (e) => Padding(
                                        padding: EdgeInsets.only(
                                            top: 16.h, right: 8.w),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(16.r),
                                            color: const Color(0xFFFFFFFF),
                                            boxShadow: [
                                              BoxShadow(
                                                  color: const Color(0xFF161C22)
                                                      .withOpacity(0.1),
                                                  blurRadius: 16.r,
                                                  blurStyle: BlurStyle.normal),
                                            ],
                                          ),
                                          child: Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10.h, left: 12.w),
                                                    child: Text(
                                                      '${e.price}',
                                                      style: TextStyle(
                                                        color: e.color,
                                                        fontSize: 16.sp,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        fontFamily:
                                                            'Neue Montreal',
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 38.w,
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 8.h, right: 8.w),
                                                    child: Image.asset(e.asset),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 8.h, left: 12.w),
                                                    child: Text(e.name),
                                                  ),
                                                  SizedBox(
                                                    width: 4.w,
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 9.h),
                                                    child: Text(
                                                      '${e.profit}',
                                                      style: TextStyle(
                                                        color: e.color,
                                                        fontSize: 12.sp,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontFamily:
                                                            'Neue Montreal',
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    12.w, 16.h, 9.w, 12.h),
                                                child: Image.asset(
                                                  e.image,
                                                  width: 142.w,
                                                  height: 31.h,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                    .toList()),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Card_ui extends StatelessWidget {
  final String asset;
  final String title;
  final String desc;
  const Card_ui({
    Key? key,
    required this.asset,
    required this.title,
    required this.desc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(24.w, 17.h, 24.w, 0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.r),
          color: const Color(0xFFE3E8ED).withOpacity(0.8),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(12.w, 13.h, 0, 13.h),
              child: Image.asset(asset),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(16.w, 16.h, 0, 16.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: const Color(0xFF1B232A),
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Neue Montreal',
                    ),
                  ),
                  Text(
                    desc,
                    style: TextStyle(
                      color: const Color(0xFFA7AFB7),
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Neue Montreal',
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(33.w, 18.h, 18.h, 18.h),
              child: Container(
                height: 40.h,
                width: 40.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.r),
                  color: const Color(0xFFE3E8ED),
                ),
                child: const Center(
                  child: Icon(
                    Icons.arrow_forward,
                    color: Color(0xFF777777),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

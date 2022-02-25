import 'package:crypto_app/Screens/sign_page.dart';
import 'package:crypto_app/widgets/Button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:crypto_app/models/onboard_data.dart';

class OnBoarrding extends StatefulWidget {
  const OnBoarrding({Key? key}) : super(key: key);

  @override
  _OnBoarrdingState createState() => _OnBoarrdingState();
}

class _OnBoarrdingState extends State<OnBoarrding> {
  int currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);
  AnimatedContainer dotIndicator(index) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: 12.24.w,
      height: 12.24.h,
      decoration: BoxDecoration(
        color: currentPage == index
            ? const Color(0xFF777777)
            : const Color(0xFF252E35),
        shape: BoxShape.circle,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1B232A),
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              "assets/Background_onboard.png",
              height: 1.sh,
              width: 1.sw,
              fit: BoxFit.cover,
            ),
            Column(
              children: [
                Expanded(
                  flex: 5,
                  child: PageView.builder(
                    onPageChanged: (value) {
                      setState(() {
                        currentPage = value;
                      });
                    },
                    controller: _pageController,
                    itemCount: onboardingList.length,
                    itemBuilder: (context, index) => Column(
                      children: [
                        SizedBox(
                          height: 93.h,
                        ),
                        SizedBox(
                          height: 387.h,
                          width: 1.sw,
                          child: Image.asset(onboardingList[index].image),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(75.w, 37.h, 75.w, 0),
                          child: Text(
                            onboardingList[index].title,
                            style: Theme.of(context).textTheme.headline2,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(24.w, 24.h, 24.w, 0),
                          child: Text(
                            onboardingList[index].description,
                            style: Theme.of(context).textTheme.bodyText1,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          onboardingList.length,
                          (index) => dotIndicator(index),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          if (currentPage == 2) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Sign()),
                            );
                          } else {
                            _pageController.nextPage(
                                duration: const Duration(milliseconds: 400),
                                curve: Curves.easeInOut);
                          }
                        },
                        child: Button(
                          top: 40.76.h,
                          height: 54.h,
                          width: 180.w,
                          radius: 16.r,
                          color: const Color(0xFF5ED5A8),
                          widget: Text(
                            currentPage == 2 ? 'Finish' : 'Next',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1
                                ?.copyWith(color: const Color(0xFF171D22)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

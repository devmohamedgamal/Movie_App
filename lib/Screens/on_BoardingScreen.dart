import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:movie_app_ui/components/custom_outline.dart';
import 'package:movie_app_ui/constants.dart';

class onBoardScreen extends StatelessWidget {
  const onBoardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Constants.kBlackColor,
      body: Container(
        width: screenWidth,
        height: screenHeight,
        child: Stack(
          children: [
            Positioned(
              top: screenHeight * 0.1,
              left: -88,
              child: Container(
                width: 166,
                height: 166,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Constants.kPinkColor,
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 200, sigmaY: 200),
                  child: Container(
                    width: 166,
                    height: 166,
                  ),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.3,
              right: -100,
              child: Container(
                width: 200,
                height: 200,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Constants.kGreenColor,
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 200, sigmaY: 200),
                  child:  Container(
                    width: 200,
                    height: 200,
                  ),
                ),
              ),
            ),
            SafeArea(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: screenHeight * 0.07,
                    ),
                    ClipOval(
                      child: Container(
                        width: 320,
                        height: 320,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Constants.kPinkColor,
                              Constants.kPinkColor.withOpacity(0),
                              Constants.kGreenColor.withOpacity(0.1),
                              Constants.kGreenColor.withOpacity(1),
                            ],
                            stops: const [0.2, 0.4, 0.6, 1],
                          ),
                        ),
                        child: Image.asset(
                          'assets/img-onboarding.png', // Replace with your image URL
                          fit: BoxFit.cover,
                          alignment: Alignment.bottomLeft,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.05,
                    ),
                    Text(
                      'Watch Movies in \n Virtual Reality',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: screenWidth * 0.11,
                        fontWeight: FontWeight.w700,
                        color: Constants.kWhiteColor.withOpacity(0.8),
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.03,
                    ),
                    Text(
                      'Download and Watch Offline \n Wherever You Are',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: screenWidth * 0.04,
                        fontWeight: FontWeight.w100,
                        color: Constants.kWhiteColor.withOpacity(0.5),
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.07,
                    ),
                    CustomOutline(
                      strokeWidth: 3,
                      radius: 20,
                      gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Constants.kPinkColor,
                          Constants.kGreenColor,
                        ],
                      ),
                      width: 200,
                      height: 44,
                      padding: const EdgeInsets.all(2),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Constants.kPinkColor.withOpacity(0.3),
                              Constants.kGreenColor.withOpacity(0.3),
                            ],
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'SIGN UP',
                            style: TextStyle(
                              fontSize: screenHeight <= 660 ? 15 : 18,
                              fontWeight: FontWeight.w700,
                              color: Constants.kWhiteColor.withOpacity(0.8),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        3,
                        ((index) {
                          return Container(
                            margin: const EdgeInsets.symmetric(
                              horizontal: 4,
                            ),
                            height: 7,
                            width: 7,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: index == 0
                                  ? Constants.kGreenColor
                                  : index == 1
                                      ? Constants.kWhiteColor.withOpacity(0.2)
                                      : Constants.kWhiteColor.withOpacity(0.2),
                            ),
                          );
                        }),
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.05,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

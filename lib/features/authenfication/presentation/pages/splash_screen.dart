import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:singelton_dars/assets/widgets/icons.dart';
import 'package:singelton_dars/features/authenfication/presentation/pages/onboarding.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () { 
      Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=>const OnBoarding()), (route) => false);
     });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: (MediaQuery.of(context).size.height / 100) * 47.8,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: (MediaQuery.of(context).size.width/100)*39.8, 
                    height: (MediaQuery.of(context).size.height/100)*6,
                    child: SvgPicture.asset(AppIcons.logo),
                  ),
                ],
              ),
            ), 
            const Spacer(), 
            Row( 
              mainAxisAlignment: MainAxisAlignment.center,
              children: [ 
                CupertinoActivityIndicator()
              ],
            ), 
            Gap((MediaQuery.of(context).size.height/100)*2),
          ],
        ),
      ),
    );
  }
}

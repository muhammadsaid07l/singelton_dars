import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:singelton_dars/assets/colors/color.dart';
import 'package:singelton_dars/assets/widgets/icons.dart';
import 'package:singelton_dars/assets/widgets/images.dart';
import 'package:singelton_dars/features/authenfication/login_screen.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         automaticallyImplyLeading: false,
        actions: [
          GestureDetector( 
            onTap: () {
              Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=>const LoginScreen()), (route) => false);
            },
            child: Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(right: 20, top: 20),
              height: (MediaQuery.of(context).size.height / 100) * 3.95,
              width: (MediaQuery.of(context).size.width / 100) * 43.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: textFieldNoFocusBackgound,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "O‘tkazib yuborish",
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                          color: textFieldFocusBorderColor,
                          fontWeight: FontWeight.w400,
                        ),
                  ),
                  SvgPicture.asset(AppIcons.otkazish),
            
                ],
              ),
            ),
          )
        ],
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: (MediaQuery.of(context).size.height / 100) * 69.9,
            ),
            child: Image.asset(
              AppImages.oy,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: (MediaQuery.of(context).size.height / 100) * 38),
            child: Image.asset(AppImages.location),
          ),
        ],
      ),
    );
  }
}

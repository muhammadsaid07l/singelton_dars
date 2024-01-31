import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:singelton_dars/assets/colors/color.dart';
import 'package:singelton_dars/assets/widgets/icons.dart';
import 'package:singelton_dars/features/authenfication/presentation/pages/sign_up.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late final TextEditingController numberController;
  late final TextEditingController passwordController;
  @override
  void initState() {
    numberController = TextEditingController();
    passwordController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: (MediaQuery.of(context).size.height / 100) * 6.5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(AppIcons.logo),
                  ],
                ),
              ),
              Gap((MediaQuery.of(context).size.height / 100) * 5.8),
              Text(
                "Xush kelibsiz!",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const Gap(4),
              Text(
                "Ma’lumotlarni kiriting",
                style: Theme.of(context).textTheme.bodySmall,
              ),
              Gap((MediaQuery.of(context).size.height / 100) * 2.7),
              Text(
                "Telefon raqam",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
              ),
              const Gap(8),
              Container(
                decoration: BoxDecoration(
                  color: textFieldNoFocusBackgound,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: TextFormField(
                  style: Theme.of(context).textTheme.displaySmall!.copyWith(color: textBlack),
                  keyboardType: TextInputType.number,
                  controller: numberController,
                  decoration: InputDecoration(
                    
                    hintText: "99 123 45 67",
                    hintStyle: Theme.of(context).textTheme.displaySmall,
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(
                        left: (MediaQuery.of(context).size.width / 100) * 3.2,
                        right: (MediaQuery.of(context).size.width / 100) * 1.4,
                        top: (MediaQuery.of(context).size.height / 100) * 1.50,
                        bottom:
                            (MediaQuery.of(context).size.height / 100) * 1.73,
                      ),
                      child: Text(
                        "+998",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
              Gap((MediaQuery.of(context).size.height / 100) * 1.97),
              Text(
                "Parol",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
              ),
              Gap((MediaQuery.of(context).size.height / 100)),
              Container(
                decoration: BoxDecoration(
                  color: textFieldNoFocusBackgound,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: TextFormField(
                  style: Theme.of(context).textTheme.displaySmall!.copyWith(color: textBlack),

                  controller: passwordController,
                  decoration: InputDecoration(
                    suffixIcon: Padding(
                      padding: EdgeInsets.only(
                        right: (MediaQuery.of(context).size.width / 100) * 3.2,
                        top: (MediaQuery.of(context).size.height / 100) * 1.84,
                        bottom:
                            (MediaQuery.of(context).size.height / 100) * 1.84,
                      ),
                      child: GestureDetector( 
                        onTap: () {
                          
                        },
                        child: Text(
                          "Unutdingizmi?",
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                      ),
                    ),
                    hintText: "Parolni kiriting",
                    hintStyle: Theme.of(context).textTheme.displaySmall,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
              Gap(
                (MediaQuery.of(context).size.height / 100) * 2.5,
              ),
              Container(
                height: (MediaQuery.of(context).size.height / 100) * 5.92,
                width: double.maxFinite,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: bottonColorYellow,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  "Kirish",
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .copyWith(color: textBlack),
                ),
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Ilovada yangimisiz?",
                    style: Theme.of(context).textTheme.displaySmall!.copyWith(
                          color: bodySmallText,
                        ),
                  ),
                ],
              ),
              Gap((MediaQuery.of(context).size.height / 100) * 1.74)
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          height: 101, // (MediaQuery.of(context).size.height/100)*10,
          color: scaffoldBackgroundColor,
          elevation: 0,

          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    bottom: (MediaQuery.of(context).size.height / 100) * 3),
                child: GestureDetector( 
                  onTap: () {
                    Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=>const SignUpPage()), (route) => false);
                  },
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const SignUpPage()));
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: (MediaQuery.of(context).size.height / 100) * 5.92,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        color: pinkish,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        "Ro‘yxatdan o‘tish",
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .copyWith(color: textBlack),
                      ),
                    ),
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

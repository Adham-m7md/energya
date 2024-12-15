import 'package:Energya/constants.dart';
import 'package:Energya/core/utils/app_routers.dart';
import 'package:Energya/core/utils/directions.dart';
import 'package:Energya/core/utils/extentions.dart';
import 'package:Energya/core/utils/styles.dart';
import 'package:Energya/core/widgets/custom_navigation_button.dart';
import 'package:Energya/core/widgets/logo_body.dart';
import 'package:Energya/presentation/home/widgets/text_feilds.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: ListView(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: context.height * 0.03,
                  ),
                  const LogoBody(),
                  const Padding(
                    padding: EdgeInsets.only(left: 16, top: 24),
                    child: Row(
                      children: [
                        Text(
                          "Sign Up",
                          style: TextStyle(
                              fontSize: 34,
                              color: kPrimaryColor,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              TextFeild(
                prefixIcon: Icons.person,
                hintText: 'Enter your full name',
              ),
              const SizedBox(height: 12),
              TextFeild(
                textInputType: TextInputType.emailAddress,
                prefixIcon: Icons.mail,
                hintText: 'Enter your Email',
              ),
              const SizedBox(height: 12),
              TextFeild(
                textInputType: TextInputType.phone,
                prefixIcon: Icons.phone,
                hintText: 'Enter your phone number',
              ),
              const SizedBox(height: 12),
              TextFeild(
                suffixIcon: Icons.visibility_off,
                prefixIcon: Icons.lock,
                hintText: 'password',
              ),
              const SizedBox(height: 12),
              TextFeild(
                suffixIcon: Icons.visibility_off,
                prefixIcon: Icons.lock,
                hintText: 'Re-enter your password',
              ),
              const SizedBox(height: 16),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                child: CustomNavigatorButton(
                  buttonName: 'Sign Up',
                  nextRoutName: AppRouters.kHomeView,
                  borderRadius: 40,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'already have an account ',
                    style: Styles.textStyle16600,
                  ),
                  GestureDetector(
                    onTap: () => context.NavigatePopTo(AppRouters.kSignInPage),
                    child: Text(
                      'SiGN IN',
                      style: Styles.textStyle16600
                          .copyWith(color: kPrimaryColor.withOpacity(1)),
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

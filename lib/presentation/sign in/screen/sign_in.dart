import 'package:Energya/constants.dart';
import 'package:Energya/core/utils/app_routers.dart';
import 'package:Energya/core/utils/extentions.dart';
import 'package:Energya/core/utils/styles.dart';
import 'package:Energya/core/widgets/custom_navigation_button.dart';
import 'package:Energya/core/widgets/logo_body.dart';
import 'package:Energya/presentation/home/widgets/text_feilds.dart';
import 'package:flutter/material.dart';
class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: ListView(
            children: [
              const Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 80),
                    child: LogoBody()
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16, top: 48),
                    child: Row(
                      children: [
                        Text(
                          "Sign In",
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
                prefixIcon: Icons.mail,
                hintText: 'Email',
                textInputType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 12),
              TextFeild(
                suffixIcon: Icons.visibility_off,
                prefixIcon: Icons.lock,
                hintText: 'password',
              ),
              const SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.only(right: 12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: const Text('Forgot Password ?',
                          style: Styles.textStyle16600),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                child: CustomNavigatorButton(
                  buttonName: 'Sign in',
                  nextRoutName: AppRouters.kHomeView,
                  borderRadius: 40,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'don\'t have an account  ',
                    style: Styles.textStyle16600,
                  ),
                  GestureDetector(
                    onTap: () =>
                        context.NavigatePushTo(AppRouters.kregisterPage),
                    child: Text(
                      'SiGN UP',
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

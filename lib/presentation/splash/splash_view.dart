import 'package:Energya/constants.dart';
import 'package:Energya/core/utils/app_routers.dart';
import 'package:Energya/core/utils/directions.dart';
import 'package:Energya/core/utils/extentions.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 2),
      () {
        // ignore: use_build_context_synchronously
        context.NavigatePushTo(AppRouters.kSignInPage);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            /*  Stack(
              children: [
                Container(
                  height: context.height * 0.4,
                  width: context.width * 0.77,
                  color: kBlackColor,
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.blueAccent, width: 3),
                        shape: BoxShape.circle,
                        color: kPrimaryColor.withOpacity(0.15)),
                  ),
                ),
                Positioned(
                  bottom: context.height * 0.08,
                  right: context.width * 0.078,
                  child: Image.asset(
                    fit: BoxFit.fill,
                    kLogo,
                    height: context.height * 0.32,
                    width: context.width * 0.70,
                  ),
                )
              ],
            ),
            */
            Image.asset(
              fit: BoxFit.fill,
              kLogo,
              scale: 4,
            ),
          ],
        ),
      ),
    );
  }
}

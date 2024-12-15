import 'package:Energya/constants.dart';
import 'package:Energya/core/utils/app_routers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Energya());
}

class Energya extends StatelessWidget {
  const Energya({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Energya',
      routerConfig: AppRouters.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kBlackColor,
      ),
    );
  }
}

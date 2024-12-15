import 'package:Energya/constants.dart';
import 'package:Energya/presentation/home/widgets/drawar.dart';
import 'package:Energya/presentation/home/widgets/home_view_boby.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  // final items = <Widget>[
  //   const Icon(Icons.home),
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: kPrimaryColor.withOpacity(0.5),
        title: const Text('Welcome adham'),
        centerTitle: true,
      ),
      extendBody: true,
      body: const SafeArea(
        child: HomeViewBody(),
      ),
      endDrawer: const CustomDrawar(),
    );
  }
}

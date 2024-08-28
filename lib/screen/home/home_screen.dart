import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:our_plants/constants.dart';
import 'package:our_plants/screen/home/components/body.dart';

import '../../components/my_botton_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
      bottomNavigationBar: MybottonNavigatorBar(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).primaryColor,
      elevation: 0,
        leading: IconButton(
          icon: SvgPicture.asset('assets/icons/menu.svg'),
          onPressed: (){

          },
        ),

    );
  }
}



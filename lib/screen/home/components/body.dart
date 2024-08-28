import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:our_plants/constants.dart';
import 'package:our_plants/screen/home/components/recomended_plant.dart';
import 'package:our_plants/screen/home/components/title_with_mor_button.dart';

import 'featured_plants.dart';
import 'header_with_searchbox.dart';


class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    //provides us total heigh and with of our screen
    Size size = MediaQuery.of(context).size;
    //enabble scrolling on small devices
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          TitleWithMoreButton(tittle: 'Recomended',
          pressed: (){
          },),
       RecomendsPlants(),
          TitleWithMoreButton(tittle: 'Featured Plants',
          pressed: (){},),
        FeaturedPlants(),
          SizedBox(height: kDefaultPadding,)
        ],
      ),
    );
  }
}






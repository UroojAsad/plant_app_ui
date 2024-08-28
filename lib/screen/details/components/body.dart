import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:our_plants/constants.dart';
import 'package:our_plants/screen/details/components/title_and_images.dart';

import 'Icon_card.dart';
import 'images_and_icons.dart';

class DetailsBody extends StatelessWidget {
  const DetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return  SingleChildScrollView(
      child: Column(children: [
        ImageAndIcons(size: size),
      TittleAndPrice(title: "Angelica", country: "Russia", price: 440,),
        SizedBox(height: kDefaultPadding),
        Row(
          children: <Widget>[
            SizedBox(
              width: size.width / 2,
              height: 84,
              child: TextButton(
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                    ),
                  ),
                  backgroundColor: kPrimaryColor,
                  ),


                onPressed: () {},
                child: Text(
                  "Buy Now",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {},
                child: Text("Description"),
              ),
            ),
          ],
        ),
      ],),
    );
  }
}




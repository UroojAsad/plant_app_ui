import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';


class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: kDefaultPadding * 2.5) ,
      //cover only 20% of our total height
      height: size.height * 0.2,
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(left: kDefaultPadding,
                right: kDefaultPadding,
                bottom: 36 + kDefaultPadding),
            height: size.height * 0.2 -27,
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(36),
                bottomLeft: Radius.circular(36),
              ),
            ),
            child: Row(
              children: [
                Text('Hi Uishopy!',
                  style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),),
                Spacer(),
                Image.asset('assets/images/logo.png'),
              ],
            ),
          ),

          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric( horizontal:kDefaultPadding),
                padding: EdgeInsets.symmetric( horizontal:kDefaultPadding),

                height: 54,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0,10),
                        blurRadius: 50,
                        color:kPrimaryColor.withOpacity(0.23),
                      ),
                    ]
                ),
                child: Row(
                  children: [
                    Expanded(
                      child:  TextField(
                        onChanged : (value) {
                        },
                        decoration: InputDecoration(
                          hintText: 'Search',
                          hintStyle: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5),
                          ),
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          //suffix not working properly with SVG sa we use row
                          // suffixIcon: SvgPicture.asset('assets/icons/search.svg')
                        ),
                      ),
                    ),
                    SvgPicture.asset('assets/icons/search.svg'),
                  ],
                ),
              )
          )
        ],
      ),
    );
  }
}
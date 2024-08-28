import 'package:flutter/material.dart';
import 'package:our_plants/screen/details/components/body.dart';

import '../home/components/body.dart';


class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DetailsBody(),
    );
  }
}

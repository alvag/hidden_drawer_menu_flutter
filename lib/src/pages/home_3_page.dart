import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:hidden_drawer_menu_flutter/src/widgets/liquid_pages.dart';

class Home3Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LiquidSwipe(
        pages: liquidPages2,
        fullTransitionValue: 500,
        enableLoop: true,
        enableSlideIcon: true,
        positionSlideIcon: 0.8,
        waveType: WaveType.liquidReveal,
      ),
    );
  }
}

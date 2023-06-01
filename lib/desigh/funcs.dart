import 'package:flutter/material.dart';

const double baseWidth = 375;
const double baseHeight = 825;
const double preferredMenubarSize = 74;
const double preferredAppbarSize = 56;
const double preferredTopSize = 100;

double scaleWidth(BuildContext context) {
  final diff = MediaQuery.of(context).size.width / baseWidth;
  return diff;
}

double scaleHeightWithMenubar(BuildContext context) {
  final diff = (MediaQuery.of(context).size.height -
          preferredMenubarSize -
          preferredAppbarSize) /
      baseHeight;
  return diff;
}

import 'package:flutter/material.dart';
import 'package:flutter_omni_test/colors/o_colors.dart';
import 'package:flutter_omni_test/settings/config.dart';
import 'package:shimmer/shimmer.dart';

class ItemShimmer extends StatelessWidget {
  const ItemShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:Config.defaultMargin,
      child: Shimmer.fromColors(
        baseColor: OColors.shimmerHighlight,
        highlightColor: OColors.shimmerBase,
        child: Container(
          height: 180,
          decoration: BoxDecoration(
            color: OColors.smoke,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}

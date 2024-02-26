import 'package:flutter/material.dart';

import '../config/size_config.dart';
import '../config/theme/app_colors.dart';

enum DividerType { Horizontal, Vertical }

Widget appDivider(context,
    {DividerType dividerType = DividerType.Horizontal,
    double? padding,
    double? height,
    Color? color
    }) {
  return dividerType == DividerType.Horizontal
      ? Padding(
          padding:
              EdgeInsets.symmetric(horizontal: setWidthValue(padding ?? 0)),
          child: Divider(
            height: height,
            color: color ?? Theme.of(context).dividerColor,
          ),
        )
      : const VerticalDivider();
}

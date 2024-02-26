


import 'package:flutter/material.dart';

import '../config/size_config.dart';
import '../config/theme/app_colors.dart';
import 'app_text.dart';


//ignore: must_be_immutable
class PbChips extends StatefulWidget {
  PbChips({super.key,
    required this.label,
    required this.value,
    required this.onTap,
    this.padding
  });
  final String label;
  bool value;
  var onTap;
  var padding;
  @override
  State<PbChips> createState() => _PbChipsState();
}
class _PbChipsState extends State<PbChips> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        setState(() {
          widget.value = !widget.value;
          widget.onTap(widget.value);
        });

      },
      child: Chip(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(setHeightValue(20)),
            side: BorderSide(color: widget.value ? AppColors.primary : AppColors.accent)
        ),
        side: BorderSide(color: widget.value ? AppColors.primary : AppColors.accent),
        shadowColor: Colors.transparent,
        elevation: 0,
        padding: widget.padding ?? EdgeInsets.zero,
        label: AppTextBold(
            text: widget.label,
            color: widget.value ? AppColors.background : AppColors.accent,
            size: 12,
        ),
        backgroundColor: widget.value ? AppColors.primary : AppColors.background,
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:wooahan/app/config/color_system.dart';
import 'package:wooahan/presentation/widget/common/button/base/base_outline_button.dart';

class PrimaryOutlineButton extends BaseOutlineButton {
  const PrimaryOutlineButton({
    super.key,
    required super.width,
    required super.height,
    required super.content,
    required super.onPressed,
  });

  @override
  Color get borderColor => ColorSystem.primary;
}

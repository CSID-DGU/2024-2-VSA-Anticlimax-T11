import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wooahan/app/config/color_system.dart';
import 'package:wooahan/app/config/font_system.dart';
import 'package:wooahan/presentation/widget/common/image/svg_image_view.dart';

class TextBackAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TextBackAppBar({
    super.key,
    required this.title,
    this.actions = const <Widget>[],
    this.onBackPress,
    this.backgroundColor = ColorSystem.white,
    required this.preferredSize,
  });

  final String title;
  final List<Widget> actions;
  final Color backgroundColor;
  final Function()? onBackPress;

  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: ColorSystem.neutral.shade300,
            width: 1.0,
          ),
        ),
      ),
      child: AppBar(
        title: Text(
          title,
          style: FontSystem.H3.copyWith(
            height: 1.0,
          ),
        ),
        centerTitle: false,
        surfaceTintColor: backgroundColor,
        backgroundColor: backgroundColor,
        automaticallyImplyLeading: true,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        titleSpacing: 0,
        leadingWidth: 50,
        leading: IconButton(
          style: TextButton.styleFrom(
            splashFactory: NoSplash.splashFactory,
            foregroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
          ),
          icon: const SvgImageView(
            assetPath: 'assets/icons/left_chevron.svg',
            height: 20,
            color: ColorSystem.black,
          ),
          onPressed: onBackPress,
        ),
        actions: actions,
      ),
    );
  }
}
import 'package:flutter/material.dart';
import '../styles/app_text_style.dart';

class SmallCustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color backgroundColor, boarderColor;
  final IconData iconData;
  final bool isIconBefore;
  const SmallCustomButton({
    super.key,
    required this.onPressed,
    required this.text,
    required this.backgroundColor,
    required this.boarderColor,
    required this.iconData,
    this.isIconBefore = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        fixedSize: const Size(104, 39),
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide(
            color: boarderColor,
            width: 2,
          ),
        ),
      ), // RoundedRectang1eBorder
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          isIconBefore
              ? Icon(
                  iconData,
                  color: Colors.white,
                )
              : SizedBox(),
          SizedBox(
            width: 5,
          ),
          Text(
            text,
            style: AppTextStyle.h3regular16.copyWith(
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: 5,
          ),
          !isIconBefore
              ? Icon(
                  iconData,
                  color: Colors.white,
                )
              : SizedBox(),
        ],
      ),
    );
  }
}

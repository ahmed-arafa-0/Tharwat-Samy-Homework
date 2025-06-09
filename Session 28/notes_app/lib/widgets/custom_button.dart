import 'package:flutter/material.dart';
import 'package:notes_app/styles/app_color.dart';

class CutomButton extends StatelessWidget {
  final VoidCallback onTap;
  final bool isLoading;
  const CutomButton({super.key, required this.onTap, this.isLoading = true});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          color: AppColor.primaryColor,
        ),
        child: Center(
          child:
              isLoading
                  ? SizedBox(
                    width: 24,
                    height: 24,
                    child: const CircularProgressIndicator(color: Colors.black),
                  )
                  : const Text(
                    'Add',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomButtun extends StatelessWidget {
  const CustomButtun(
      {super.key, required this.text, this.onTap, this.isLoading = false});
  final String text;
  final void Function()? onTap;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.circular(4),
          ),
          child: Center(
            child: isLoading
                ? const SizedBox(
                    height: 24,
                    width: 24,
                    child: CircularProgressIndicator(),
                  )
                : Text(
                    text,
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                  ),
          )),
    );
  }
}

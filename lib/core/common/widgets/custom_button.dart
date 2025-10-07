import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final Color color;
  final Color textColor;
  final double borderRadius;
  final EdgeInsetsGeometry padding;
  final Image? icon;

  const CustomButton({
    super.key,
    required this.label,
    required this.onPressed,
    required this.color,
    required this.textColor,
    this.borderRadius = 14.0,
    this.padding = const EdgeInsets.symmetric(vertical: 18.0, horizontal: 50.0),
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          padding: padding,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          shadowColor: const Color.fromRGBO(0, 136, 163, 0.20),
          elevation: 10,
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null) ...[icon!, const SizedBox(width: 8.0)],
            Text(
              label,
              style: TextStyle(
                color: textColor,
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
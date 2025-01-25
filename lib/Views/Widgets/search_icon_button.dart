import 'package:flutter/material.dart';

class SearchIconButton extends StatelessWidget {
  const SearchIconButton({super.key, required this.icon_data});
  final IconData icon_data;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.2),
        borderRadius: BorderRadius.circular(16),
      ),
      height: 45,
      width: 45,
      child: Center(
        child: Icon(
          icon_data,
          size: 28,
        ),
      ),
    );
  }
}

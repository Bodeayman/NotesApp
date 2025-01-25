import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:to_do_list/Views/Widgets/add_note_sheet.dart';

class CustomFloatingLocationButton extends StatelessWidget {
  const CustomFloatingLocationButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showBottomSheet(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          constraints: BoxConstraints.fromViewConstraints(
            ViewConstraints.tight(
              Size(
                MediaQuery.of(context).size.width,
                400,
              ),
            ),
          ),
          context: context,
          builder: (context) {
            return const AddNoteSheet();
          },
        );
      },
      child: const Icon(
        Icons.add,
        size: 30,
      ),
    );
  }
}

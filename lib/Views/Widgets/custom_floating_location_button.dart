import 'package:flutter/material.dart';
import 'package:to_do_list/Views/Widgets/add_note_sheet.dart';

class CustomFloatingLocationButton extends StatelessWidget {
  const CustomFloatingLocationButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showBottomSheet(
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

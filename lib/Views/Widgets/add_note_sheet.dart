import 'package:flutter/material.dart';

class AddNoteSheet extends StatelessWidget {
  const AddNoteSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomSheet(
      builder: (context) {
        return Center(
          child: IconButton(
            icon: const Icon(Icons.error),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        );
      },
      onClosing: () {},
    );
  }
}

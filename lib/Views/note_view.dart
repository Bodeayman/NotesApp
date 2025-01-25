import 'package:flutter/material.dart';
import 'package:to_do_list/Views/Widgets/custom_floating_location_button.dart';
import 'package:to_do_list/Views/Widgets/notes_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: NotesViewBody(),
      ),
      floatingActionButton: CustomFloatingLocationButton(),
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:to_do_list/Views/note_view.dart';
import 'package:to_do_list/constant.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kboxName);
  runApp(
    const MainApp(),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ),
        brightness: Brightness.dark,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomeView(),
    );
  }
}

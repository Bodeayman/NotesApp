import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:to_do_list/Cubits/Add_Note_Cubit/add_note_cubit.dart';
import 'package:to_do_list/Cubits/Notes_Cubit/notes_cubit_cubit.dart';
import 'package:to_do_list/Models/note_model.dart';
import 'package:to_do_list/Views/note_view.dart';
import 'package:to_do_list/constant.dart';
import 'package:to_do_list/simple_bloc_observer.dart';

void main() async {
  await Hive.initFlutter();
  Bloc.observer = SimpleBlocObserver();
  Hive.registerAdapter(
    NoteModelAdapter(),
  );
  await Hive.openBox<NoteModel>(
    kboxName,
  );

  runApp(
    const MainApp(),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: MaterialApp(
        theme: ThemeData(
          textTheme: GoogleFonts.poppinsTextTheme(
            Theme.of(context).textTheme,
          ),
          brightness: Brightness.dark,
        ),
        debugShowCheckedModeBanner: false,
        home: const HomeView(),
      ),
    );
  }
}

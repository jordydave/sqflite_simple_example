import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sqflite_study/db_provider.dart';
import 'package:sqflite_study/note_list_page.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DbProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: NoteListPage(),
      ),
    );
  }
}

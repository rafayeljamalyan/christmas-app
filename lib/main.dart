import 'package:christmas_app/bloc/child_bloc.dart';
import 'package:christmas_app/data/repository.dart';
import 'package:christmas_app/screens/add_child_screen.dart';
import 'package:christmas_app/screens/child_list_screen.dart';
import 'package:flutter/material.dart';

void main() {
  final ChildBloc childBloc = ChildBloc(Repository());

  runApp(MyApp(childBloc: childBloc));
}

class MyApp extends StatelessWidget {
  final ChildBloc childBloc;

  const MyApp({Key? key, required this.childBloc}) : super(key: key);

// two routes
// 1. child list screen
// 2. add child screen
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Christmas App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChildListScreen(childBloc: childBloc),
      routes: {
        '/child_list': (context) => ChildListScreen(childBloc: childBloc),
        '/add_child': (context) => AddChildScreen(childBloc: childBloc),
      },
    );
  }
}

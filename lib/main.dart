import 'package:first_bloc_project/cubit/counter/counter_cubit.dart';
import 'package:first_bloc_project/ui/project/pages/counterPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider<CounterCubit>(
          create: (context)=>CounterCubit(),
          child: const CounterPage()
      ),
    );
  }
}

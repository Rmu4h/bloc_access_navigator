import 'package:bloc_access_navigation/presentation/router/app_router.dart';
import 'package:bloc_access_navigation/presentation/screen/home_screen.dart';
import 'package:bloc_access_navigation/presentation/screen/second_screen.dart';
import 'package:bloc_access_navigation/presentation/screen/third_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'logic/cubit/counter_cubit.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // final CounterCubit _counterCubit = CounterCubit();
  final AppRouter _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      onGenerateRoute: _appRouter.onGenerateRoute,
      // routes: {
      //   '/': (context) =>
      //       BlocProvider.value(
      //           value: _counterCubit,
      //           child: const HomeScreen(title: 'Home Screen', color: Colors.blue)
      //       ),
      //   '/second': (context) =>
      //       BlocProvider.value(
      //           value: _counterCubit,
      //           child: const SecondScreen(title: 'Second Screen', color: Colors.redAccent)
      //       ),
      //   '/third': (context) =>
      //       BlocProvider.value(
      //           value: _counterCubit,
      //           child: const ThirdScreen(title: 'Third Screen', color: Colors.yellowAccent)
      //       )
      // },
      // home: BlocProvider<CounterCubit>(
      //   create: (context) => CounterCubit(),
      //   child: const HomeScreen(
      //     title: 'Flutter Demo Home Page',
      //     color: Colors.blueAccent,
      //   ),
      // ),
    );
  }

  @override
  void dispose() {
    // _counterCubit.close();
    _appRouter.dispose();
    // TODO: implement dispose
    super.dispose();
  }
}

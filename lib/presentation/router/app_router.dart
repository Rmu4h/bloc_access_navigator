import 'package:bloc_access_navigation/logic/cubit/counter_cubit.dart';
import 'package:bloc_access_navigation/presentation/screen/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../screen/second_screen.dart';
import '../screen/third_screen.dart';

class AppRouter {
  final CounterCubit _counterCubit = CounterCubit();

  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(
            builder: (_) => BlocProvider.value(
                value: _counterCubit,
                child: const HomeScreen(
                    title: 'HomeScreen', color: Colors.blueAccent)));

        break;
      case '/second':
        return MaterialPageRoute(
            builder: (_) => BlocProvider.value(
              value: _counterCubit,
              child: const SecondScreen(
                  title: 'SecondScreen', color: Colors.redAccent),
            ));

        break;
      case '/third':
        return MaterialPageRoute(
            builder: (_) => BlocProvider.value(
              value: _counterCubit,
              child: const ThirdScreen(
                  title: 'ThirdScreen', color: Colors.yellowAccent),
            ));

        break;
      default:
        return null;
    }
  }

  void dispose() {
    _counterCubit.close();
  }
}

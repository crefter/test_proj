import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_proj/app/di.dart';
import 'package:test_proj/app/router/router.dart';
import 'package:test_proj/feature/hotel/bloc/hotel_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _router = AppRouter();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HotelBloc>(
      create: (context) => HotelBloc(
        hotelRepository: di.hotelRepository,
      )..add(HotelLoad()),
      child: MaterialApp.router(
        title: 'Flutter Demo',
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
            centerTitle: true,
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            elevation: 0,
          ),
          fontFamily: 'Sf Pro Display',
          //colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
          useMaterial3: false,
        ),
        routerConfig: _router.config(),
      ),
    );
  }
}

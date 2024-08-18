import 'package:ashrably_app/bloc/store_cubit/store_cubit.dart';
import 'package:ashrably_app/pages/splash/spalsh_one.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const AshrablyApp());
}

class AshrablyApp extends StatelessWidget {
  const AshrablyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => StoreCubit(),
        child: const Splash1(),
      ),
    );
  }
}

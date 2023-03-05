import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:proyectly/User/bloc/bloc_user.dart';

import 'package:proyectly/Core/ui/screens/splash.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'http://192.168.0.48:8000',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.ewogICAgInJvbGUiOiAiYW5vbiIsCiAgICAiaXNzIjogInN1cGFiYXNlIiwKICAgICJpYXQiOiAxNjc2MDkxNjAwLAogICAgImV4cCI6IDE4MzM4NTgwMDAKfQ.szucuTl_YcIzUKUlpvVJLuZIyg9rcAM-8em2jdKteS4',
  );
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        bloc: UserBloc(),
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            appBarTheme: null,
          ),
          home: SplashScreen(),
          debugShowCheckedModeBanner: false,
        )
    );
  }
}

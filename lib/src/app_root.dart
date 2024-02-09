import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qalam/blocs/authenticationCubit/authentication_cubit.dart';
import 'package:qalam/blocs/qalamCubit/qalam_cubit.dart';
import 'package:qalam/blocs/registerCubit/register_cubit.dart';
import 'package:qalam/screens/mainScreen/splashScreen/splash_screen.dart';


class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (BuildContext context) => QalamCubit(),
        ),
        BlocProvider(
          create: (BuildContext context) => RegisterCubit(),
        ),
        BlocProvider(
          create: (BuildContext context) => AuthenticationCubit(),
        )
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      ),
    );
  }
}

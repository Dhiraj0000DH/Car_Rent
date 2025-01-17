import 'package:car_renthol/app/di/di.dart';
import 'package:car_renthol/core/app_theme/theme_data.dart';
import 'package:car_renthol/features/auth/presentation/view/login_page.dart';
import 'package:car_renthol/features/auth/presentation/view/signup_page.dart';
import 'package:car_renthol/features/splash/presentation/view/splash_view.dart';
import 'package:car_renthol/features/splash/presentation/view_model/cubit/splash_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<SplashCubit>(), // Inject SplashCubit using getIt
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Car Renthol',
        theme: AppTheme.getApplicationTheme(isDarkMode: false),

        // Using Named Routes for cleaner navigation
        initialRoute: '/',
        routes: {
          '/': (context) => const SplashScreen(),
          '/login': (context) => const LoginPage(),
          '/signup': (context) => const SignUpPage(),
        },
      ),
    );
  }
}

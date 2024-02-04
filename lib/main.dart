import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:projectmanagement_for_project_manager/pages/onboarding_page/bloc/onboarding_bloc.dart';
import 'package:projectmanagement_for_project_manager/pages/onboarding_page/onboarding_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(const MyApp());
}

late Size size;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) {
        return MaterialApp(
          title: "Squad Master",
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            fontFamily: "Poppins",
          ),
          home: BlocProvider(
            create: (context) => OnboardingBloc(),
            child: const OnboardingPage(),
          ),
        );
      },
    );
  }
}

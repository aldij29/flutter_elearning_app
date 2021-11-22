import './ui/pages/pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import './cubit/cubits.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PageCubit(),
        ),
        BlocProvider(
          create: (context) => TabCubit(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashPage(),
          '/sign-in-page': (context) => SignInPage(),
          '/sign-up-page': (context) => SignUpPage(),
          '/main-page': (context) => MainPage(),
          '/illustration-register-page': (context) => IllustrationPage(
                imageUrl: 'assets/images/image_success_register.png',
                subTitle1: 'Yeay! Completed',
                subTitle2: 'Now you are ready to\nlearn something new everyday',
                textButton1: 'Find Course',
              ),
          '/illustration-course-page': (context) => IllustrationPage(
                imageUrl: 'assets/images/image_join_course.png',
                subTitle1: 'You’ve Joined The Course',
                subTitle2: 'now you have started to \nlearn something new',
                textButton1: 'Start Course',
                textButton2: 'Join Other Course',
              ),
          '/illustration-empty-course-page': (context) => IllustrationPage(
                imageUrl: 'assets/images/image_empty_course.png',
                subTitle1: 'Oops! Your Course is Empty',
                subTitle2: 'Seems like you have not\ntaken any courses yet',
                textButton1: 'Find Course',
              ),
        },
      ),
    );
  }
}

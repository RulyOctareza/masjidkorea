import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:masjidkorea/cubit/masjid_cubit.dart';
import 'package:masjidkorea/cubit/page_cubit.dart';
import 'package:masjidkorea/pages/splash_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyDiVmg02Eokl9nZLAZxNZ2Mh0-nkFkziHo",
      authDomain: "masjidkorea-2f6fd.firebaseapp.com",
      projectId: "masjidkorea-2f6fd",
      storageBucket: "masjidkorea-2f6fd.appspot.com",
      messagingSenderId: "528323350529",
      appId: "1:528323350529:web:d712c2e5b61b2feea13000",
    ),
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PageCubit(),
        ),
        BlocProvider(
          create: (context) => MasjidCubit(),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashPage(),
      ),
    );
  }
}

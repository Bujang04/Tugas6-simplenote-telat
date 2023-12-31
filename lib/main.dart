import 'package:flutter/material.dart';
import 'package:flutter_application_1/db/database_service.dart';
import 'package:flutter_application_1/models/note.dart';
import 'package:flutter_application_1/utils/app_routes.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(NoteAdapter());
  await Hive.openBox(DatabaseService.boxName);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Simple note',
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 255, 255, 255),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      routeInformationParser: AppRoutes.goRouter.routeInformationParser,
      routeInformationProvider: AppRoutes.goRouter.routeInformationProvider,
      routerDelegate: AppRoutes.goRouter.routerDelegate,
    );
  }
}

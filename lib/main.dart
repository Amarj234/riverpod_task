import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';


import 'package:riverpod_task/go_route.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var path = Directory.current.path;
  final dir = await getApplicationDocumentsDirectory();
  Hive.init(dir.path);


  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Riverpod Task',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MaterialApp.router(
        routerConfig: router,
      ),
    );
  }
}


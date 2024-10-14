

import 'package:go_router/go_router.dart';
import 'package:hive/hive.dart';
import 'package:riverpod_task/create_task.dart';
import 'package:riverpod_task/home_screen.dart';

// GoRouter configuration
const String createTask = 'create_task';
const String homeScreen = '/';


final router = GoRouter(
  initialLocation:
  Hive.box("data").get("taskData")  != null
      ? '/$createTask'
      : '/$homeScreen',
  routes: [

    GoRoute(
      path: homeScreen,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: createTask,
      builder: (context, state) => const CreateTask(),
    ),
  ],
);
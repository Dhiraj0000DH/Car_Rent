import 'package:flutter/material.dart';

import 'app/app.dart';
import 'app/di/di.dart'; // Dependency Injection

void main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); // Ensures async dependencies are loaded
  await initDependencies(); // Initialize dependencies before running the app
  runApp(const App());
}

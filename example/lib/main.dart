import 'package:flutter/material.dart';
import 'package:flutter_idle_detector/flutter_idle_detector.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String status = "User is Active 🟢";

  @override
  Widget build(BuildContext context) {
    return IdleDetector(
      timeout: const Duration(seconds: 60 * 5),
      onIdle: () {
        debugPrint("🔴 User is IDLE");
        setState(() {
          status = "User is Idle 😴";
        });
      },
      onActive: () {
        debugPrint("🟢 User is ACTIVE again");
        setState(() {
          status = "User is Active 🟢";
        });
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(status: status),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  final String status;

  const HomePage({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Idle Detector Example")),
      body: Center(
        child: Text(
          status,
          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

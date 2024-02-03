import 'package:flutter/material.dart';
import "package:call_gemini/constants.dart";
import 'package:call_gemini/Live_vision.dart' as LiveVision;
import "package:call_gemini/Text_only.dart" as TextOnly;
import 'package:call_gemini/Text_Image.dart' as TextWithImage;

const apiKey = AppConstants.apiKey;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 0,
        length: 2,
        child: Scaffold(
            appBar: AppBar(
              title: const Text("VizuoSense Assistant"),
              centerTitle: true,
              bottom: const TabBar(
                tabs: [
                  Tab(text: "Text Only"),
                  Tab(text: "Text with Image"),
                  Tab(text: "Live vision")
                ],
              ),
            ),
            body: TabBarView(
              children: [
                TextOnly.TextOnly(),
                TextWithImage.TextWithImage(),
                LiveVision.LiveVision(),
              ],
            )));
  }
}

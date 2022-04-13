import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;
  final String word = "g0hk=k[^9y;g]Hd";

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _copyWordToClipboard() {
    Clipboard.setData(ClipboardData(text: widget.word)).then((_) {
      _showToast(context);
    });
  }

  void _showToast(BuildContext context) {
    ScaffoldMessenger.of(context)
        .showSnackBar(const SnackBar(content: Text("Copied to clipboard")));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: _copyWordToClipboard,
          child: const Text("Copy"),
        ),
      ),
    );
  }
}

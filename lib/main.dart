import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MarkdownSample(),
    );
  }
}

class MarkdownSample extends StatefulWidget {
  const MarkdownSample({Key? key}) : super(key: key);

  @override
  State<MarkdownSample> createState() => _MarkdownSampleState();
}

class _MarkdownSampleState extends State<MarkdownSample> {
  String _markdownText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Markdown Sample'),
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: TextField(
              keyboardType: TextInputType.multiline,
              maxLines: null,
              onChanged: (text) {
                setState(() {
                  _markdownText = text;
                });
              },
            ),
          ),
          Container(
            height: double.infinity,
            width: 1,
            color: Colors.black54,
          ),
          Expanded(
            child: Markdown(data: _markdownText),
          )
        ],
      ),
    );
  }
}

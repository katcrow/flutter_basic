import 'dart:math';
import 'package:flutter/material.dart';

class RandomizerPage extends StatefulWidget {
  final int min;
  final int max;

  const RandomizerPage({Key? key, required this.min, required this.max}) : super(key: key);

  @override
  State<RandomizerPage> createState() => _RandomizerPageState();
}

class _RandomizerPageState extends State<RandomizerPage> {
  int? _generatedNumber;
  final randomGenerator = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Randomizer'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(widget.min.toString()),
            Text(widget.max.toString()),
            SizedBox(height: 16),
            Text(
              _generatedNumber?.toString() ?? 'No number',
              style: Theme.of(context).textTheme.headline4,
            )
          ],
        ),
      ),
    );
  }
}

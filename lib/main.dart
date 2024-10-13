import 'package:flutter/material.dart';

void main() {
  runApp(ChessBoardApp());
}

class ChessBoardApp extends StatelessWidget {
  const ChessBoardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chess Board',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Chess Board'),
        ),
        backgroundColor: Colors.grey, 
        body: Center(
          child: ChessBoard(), 
        ),
      ),
    );
  }
}

class ChessBoard extends StatelessWidget {
  const ChessBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500, 
      height: 500, 
      decoration: BoxDecoration(
        color: Colors.grey[200], 
        border: Border.all(color: Colors.black), 
      ),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 8, 
        ),
        itemBuilder: (context, index) {
          int row = index ~/ 8;
          int col = index % 8;
          Color color;
          if ((row + col) % 2 == 0) {
            color = Colors.white; 
          } else {
            color = Colors.black; 
          }

          return Container(
            color: color,
          );
        },
      ),
    );
  }
}

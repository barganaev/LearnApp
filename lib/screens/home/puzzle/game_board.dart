import 'dart:async';
import 'package:diplom_app/screens/home/puzzle/controller.dart';
import 'package:diplom_app/screens/home/puzzle/game_piece.dart';
import 'package:flutter/material.dart';

class GameBoard extends StatefulWidget {

  GameBoard({Key key}) : super(key: key);

  @override
  _GameBoardState createState() => _GameBoardState();
}

class _GameBoardState extends State<GameBoard> {

  StreamSubscription _eventStream;
  Offset dragOffset = Offset(0, 0);

  List<GamePiece> pieces = [];

  void onTurn(dynamic data) => setState(() { pieces = Controller.pieces; });

  void onGesture(DragUpdateDetails ev) =>
      dragOffset = Offset((dragOffset.dx + ev.delta.dx) / 2, (dragOffset.dy + ev.delta.dy) / 2);

  void onPanEnd(DragEndDetails ev) {
    Controller.on(dragOffset);
    dragOffset = Offset(0, 0);
  }

  @override
  void initState() {

    super.initState();
    _eventStream = Controller.listen(onTurn);
  }

  @override
  void dispose() {

    super.dispose();
    _eventStream.cancel();
  }

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    double root = size.width;

    return GestureDetector(
        onPanUpdate: onGesture,
        onPanEnd: onPanEnd,
        child: Expanded(
            child: Center(
                child: Container(
                    margin: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.cyan.withOpacity(0.4), width: 1),
                        borderRadius: BorderRadius.circular(24)
                    ),
                    width: root,
                    height: root,
                    child: Container(
                        child: Stack(
                            key: UniqueKey(),
                            children: pieces
                        )
                    )
                )
            )
        )
    );
  }
}
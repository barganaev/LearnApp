import 'package:diplom_app/screens/home/puzzle/controller.dart';
import 'package:diplom_app/screens/home/puzzle/game_board.dart';
import 'package:diplom_app/screens/home/puzzle/score.dart';
import 'package:flutter/material.dart';

class HomePuzzleScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ScoreView(),
              GameBoard(),
              Padding(
                  padding: EdgeInsets.only(bottom: 4),
                  child: SizedBox(
                      height: 64,
                      width: double.infinity,
                      child: Container(
                          margin: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white.withOpacity(0.2)),
                              borderRadius: BorderRadius.circular(8)
                          ),
                          child: MaterialButton(
                              color: Colors.grey.withOpacity(0.2),
                              onPressed: Controller.start,
                              child: Text('start')
                          )
                      )
                  )
              )
            ]
        ),
    );
  }
}
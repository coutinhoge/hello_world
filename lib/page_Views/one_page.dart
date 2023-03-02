import 'package:flutter/material.dart';

class OnePage extends StatelessWidget {
  const OnePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.blueGrey,
              ),
              child: Center(
                child: Text(
                  'Ola, Mundo!',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  color: Colors.red,
                  height: 100,
                  width: 200,
                  child: Center(
                    child: Text(
                      'Texto',
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  ),
                ),
                Container(
                  color: Colors.purple,
                  height: 100,
                  width: 200,
                  child: Center(
                    child: Text(
                      'Texto',
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  ),
                ),
              ],
            ),
          ]);
  }
}
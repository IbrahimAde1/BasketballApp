import 'package:flutter/material.dart';

void main() {
  runApp(const Basket());
}

class Basket extends StatefulWidget {
  const Basket({super.key});

  @override
  State<Basket> createState() => _BasketState();
}

class _BasketState extends State<Basket> {
  int teamA = 0;
  int teamB = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Team A',
                      style: TextStyle(fontSize: 40),
                    ),
                    Text(
                      '$teamA',
                      style: const TextStyle(fontSize: 150),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange),
                      child: const Text(
                        'Add 1 point',
                        style: TextStyle(color: Colors.black),
                      ),
                      onPressed: () {
                        setState(() {
                          teamA++;
                        });
                      },
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange),
                      child: const Text('Add 2 point',
                          style: TextStyle(color: Colors.black)),
                      onPressed: () {
                        setState(() {
                          teamA = teamA + 2;
                        });
                      },
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange),
                      child: const Text('Add 3 point',
                          style: TextStyle(color: Colors.black)),
                      onPressed: () {
                        setState(() {
                          teamA = teamA + 3;
                        });
                      },
                    ),
                  ],
                ),
                const SizedBox(
                    height: 400,
                    child: VerticalDivider(
                        color: Colors.black,
                        width: 30,
                        thickness: 1,
                        indent: 20)),
                Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Team B',
                      style: TextStyle(fontSize: 40),
                    ),
                    Text(
                      '$teamB',
                      style: const TextStyle(fontSize: 150),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange),
                      child: const Text('Add 1 point',
                          style: TextStyle(color: Colors.black)),
                      onPressed: () {
                        setState(() {
                          teamB++;
                        });
                      },
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange),
                      child: const Text('Add 2 point',
                          style: TextStyle(color: Colors.black)),
                      onPressed: () {
                        setState(() {
                          teamB = teamB + 2;
                        });
                      },
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange),
                      child: const Text('Add 3 point',
                          style: TextStyle(color: Colors.black)),
                      onPressed: () {
                        setState(() {
                          teamB = teamB + 3;
                        });
                      },
                    )
                  ],
                ),
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
              child: const Text(
                'Reset',
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () {
                setState(() {
                  teamA = 0;
                  teamB = 0;
                });
              },
            ),
          ],
        ),
        appBar: AppBar(
            title: const Text('Points Counter'),
            backgroundColor: Colors.orange),
      ),
    );
  }
}

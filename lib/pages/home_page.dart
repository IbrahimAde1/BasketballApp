import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../Custom/custom_button.dart';
import 'package:basketballapp/cubit/counter_cubit.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Points Counter',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.orange),
      body: SizedBox(
        width: 500,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    const Text(
                      'Team A',
                      style: TextStyle(fontSize: 40),
                    ),
                    Text(
                      '${BlocProvider.of<CounterCubit>(context).teamA}',
                      style: const TextStyle(fontSize: 120),
                    ),
                    CustomButton(
                        text: 'Add 1 point',
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .teamIncrement(buttonNumber: 1, team: 'A');
                        }),
                    CustomButton(
                        text: 'Add 2 point',
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .teamIncrement(buttonNumber: 2, team: 'A');
                        }),
                    CustomButton(
                        text: 'Add 3 point',
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .teamIncrement(buttonNumber: 3, team: 'A');
                        }),
                  ],
                ),
                const SizedBox(
                    height: 500,
                    child: VerticalDivider(
                        color: Colors.black,
                        width: 30,
                        thickness: 1,
                        indent: 20)),
                Column(
                  children: [
                    const Text(
                      'Team B',
                      style: TextStyle(fontSize: 40),
                    ),
                    Text(
                      '${BlocProvider.of<CounterCubit>(context).teamB}',
                      style: const TextStyle(fontSize: 120),
                    ),
                    CustomButton(
                        text: 'Add 1 point',
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .teamIncrement(buttonNumber: 1, team: 'B');
                        }),
                    CustomButton(
                        text: 'Add 2 point',
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .teamIncrement(buttonNumber: 2, team: 'B');
                        }),
                    CustomButton(
                        text: 'Add 3 point',
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .teamIncrement(buttonNumber: 3, team: 'B');
                        }),
                  ],
                ),
              ],
            ),
            CustomButton(
                text: 'Reset',
                onPressed: () {
                  BlocProvider.of<CounterCubit>(context)
                      .teamIncrement(rest: true, buttonNumber: 0, team: '');
                }),
          ],
        ),
      ),
    );
  }
}

import 'package:basketballapp/cubit/counter_cubit.dart';
import 'package:basketballapp/cubit/counter_state_cubit.dart';
import 'package:basketballapp/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const Basket());
}

class Basket extends StatelessWidget {
  const Basket({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(
          theme: ThemeData(useMaterial3: true),
          debugShowCheckedModeBanner: false,
          home: BlocConsumer<CounterCubit, CointerState>(
            builder: (context, state) {
              return HomePage();
            },
            listener: (context, state) {},
          )),
    );
  }
}

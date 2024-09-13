import 'package:counterchangestate_bloc_cubit/business_logic_layers/bloc/counter_bloc.dart';
import 'package:counterchangestate_bloc_cubit/presentation/widget/floatingActionButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Bloc&Cubit",
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue[800],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Counter Value is:",
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
            ),
            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) {
                if (state is CounterInitial) {
                  return const Text(
                    "0",
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
                  );
                } else if (state is counterchangedstate) {
                  return Text(
                    state.counter.toString(),
                    style: const TextStyle(
                        fontSize: 30, fontWeight: FontWeight.w600),
                  );
                }
                return const SizedBox();
              },
            ),
          ],
        ),
      ),
      floatingActionButton: myFloatingActionButton(),
    );
  }
}

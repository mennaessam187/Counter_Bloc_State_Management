import 'package:counterchangestate_bloc_cubit/business_logic_layers/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class myFloatingActionButton extends StatelessWidget {
  const myFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          backgroundColor: Colors.blue[800],
          shape: const CircleBorder(),
          onPressed: () {
            BlocProvider.of<CounterBloc>(context).add(increamentCounter());
          },
          child: const Icon(Icons.add),
        ),
        const SizedBox(
          height: 5,
        ),
        FloatingActionButton(
          backgroundColor: Colors.blue[800],
          shape: const CircleBorder(),
          onPressed: () {
            BlocProvider.of<CounterBloc>(context).add(ResetCounter());
          },
          child: const Icon(Icons.exposure_zero),
        ),
        const SizedBox(
          height: 5,
        ),
        FloatingActionButton(
          backgroundColor: Colors.blue[800],
          shape: const CircleBorder(),
          onPressed: () {
            BlocProvider.of<CounterBloc>(context).add(decreamentCounter());
          },
          child: const Icon(Icons.remove),
        ),
      ],
    );
  }
}

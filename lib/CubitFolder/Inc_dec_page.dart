import 'package:flutter/material.dart';
import 'package:flutter_application_1/CubitFolder/cubit/counter_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class IncDecPage extends StatefulWidget {
  const IncDecPage({super.key});

  @override
  State<IncDecPage> createState() => _IncDecPageState();
}

class _IncDecPageState extends State<IncDecPage> {
  @override
  Widget build(BuildContext context) {
    final counterCubit = BlocProvider.of<CounterCubit>(context);
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            onPressed: () {
              counterCubit.Increment();
            },
            child: const Icon(Icons.plus_one),
          )
        ],
      ),
    );
  }
}

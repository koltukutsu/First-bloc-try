import 'package:first_bloc_project/cubit/counter/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text("First things first"),
            const Text("You can increase or decresae the number"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all (8.0),
                  child: FloatingActionButton(
                      tooltip: "Decrement",
                      child: const Icon(Icons.remove),
                      onPressed: (){
                    BlocProvider.of<CounterCubit>(context).decrement();
                  }),
                ),
                BlocBuilder<CounterCubit, CounterState>(
                  builder: (context, state) {
                    if (state.wasIncremented) {
                      return Text(state.counterValue.toString(),
                        style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold, color: Colors.green),);
                    } else {
                      return Text(state.counterValue.toString(),
                          style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold, color: Colors.red),);
                    }
                  },
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FloatingActionButton(
                      tooltip: "Decremenet",
                      child: const Icon(Icons.add),
                      onPressed: (){
                        BlocProvider.of<CounterCubit>(context).increment();
                      }),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

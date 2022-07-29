import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;
  void increase() => setState(() => counter++);
  void decrease() => setState(() => counter--);
  void reset() => setState(() => counter = 0);

  @override
  Widget build(BuildContext context) {
    const size = TextStyle(fontSize: 30);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter app'),
        elevation: 10,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Counter value', style: size),
            Text('$counter', style: size),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomFloatingButtons(increaseFunc: increase, decreaseFunc: decrease, resetFunc: reset),
      bottomNavigationBar: const BottomAppBar(
          color: Colors.white,
      ),
    );
  }
}

class CustomFloatingButtons extends StatelessWidget {
  final Function increaseFunc;
  final Function decreaseFunc;
  final Function resetFunc;

  const CustomFloatingButtons({
    Key? key, 
    required this.increaseFunc,
    required this.decreaseFunc,
    required this.resetFunc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        FloatingActionButton(
          child: const Icon(Icons.exposure_minus_1_outlined),
          onPressed: () => decreaseFunc(),
        ),
        FloatingActionButton(
          child: const Icon(Icons.exposure_zero_outlined),
          onPressed: () => resetFunc(),
        ),
        FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () => increaseFunc(),
        ),
      ],
    );
  }
}

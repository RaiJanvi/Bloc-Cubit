import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/presentation/screens/second_screen.dart';

import '../../business_logic/cubit/counter/counter_cubit.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key, required this.title, required this.color}) : super(key: key);

  final String title;
  final Color color;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: widget.color,

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            BlocBuilder<CounterCubit, CounterState>(
              // listener: (context, state){
              //   if(state.wasIncremented!){
              //     ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Incremented"), duration: Duration(milliseconds: 300),));
              //   }
              //   else if(state.wasIncremented! == false){
              //     ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Decremented"), duration: Duration(milliseconds: 300),));
              //   }
              // },
              builder: (context, state) {
                return Text(
                  state.counterValue.toString(),
                  style: Theme.of(context).textTheme.headline4,
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    BlocProvider.of<CounterCubit>(context).decrement();
                  },
                  tooltip: 'Decrement',
                  child: const Icon(Icons.remove),
                ),
                FloatingActionButton(
                  onPressed: () {
                    BlocProvider.of<CounterCubit>(context).increment();
                  },
                  tooltip: 'Increment',
                  child: const Icon(Icons.add),
                ),
              ],
            ),
            const SizedBox(height: 20,),
            MaterialButton(onPressed: (){
              Navigator.pushNamed(context, '/second');
            },
            child: const Text("GO to Second Screen"),
            color: widget.color,),

            const SizedBox(height: 20,),
            MaterialButton(onPressed: (){
              Navigator.of(context).pushNamed('/third');
            },
              child: const Text("GO to Third Screen"),
              color: widget.color,),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

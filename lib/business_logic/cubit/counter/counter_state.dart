part of 'counter_cubit.dart';

// abstract class CounterState extends Equatable {
//   const CounterState();
// }

class CounterState{
  final int counterValue;
  final bool? wasIncremented;

  const CounterState({required this.counterValue, this.wasIncremented});

  @override
  List<Object> get props => [counterValue, wasIncremented!];

}

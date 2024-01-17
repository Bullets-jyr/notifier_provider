// import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'counter_provider.g.dart';

// class Counter extends Notifier<int> {
// class Counter extends AutoDisposeNotifier<int> {
// class Counter extends FamilyNotifier<int, int> {
// class Counter extends AutoDisposeFamilyNotifier<int, int> {
//   // int publicVar = 0;
//   // int _publicVar = 0;
//   @override
//   int build(int arg) {
//     ref.onDispose(() {
//       print('[counterProvider] disposed');
//     });
//     // return 0;
//     return arg;
//   }
//
//   void increment() {
//     state++;
//   }
// }

// final counterProvider = NotifierProvider<Counter, int>(() {
//   return Counter();
// });

// constructor tear-offs
// final counterProvider = NotifierProvider<Counter, int>(Counter.new);

// autoDispose
// final counterProvider = NotifierProvider.autoDispose<Counter, int>(Counter.new);

// family
// final counterProvider = NotifierProvider.family<Counter, int, int>(Counter.new);

// autoDispose, family
// final counterProvider = NotifierProvider.autoDispose.family<Counter, int, int>(Counter.new);

@riverpod
class Counter extends _$Counter {
  @override
  int build(int initialValue) {
    ref.onDispose(() {
      print('[counterProvider] disposed');
    });
    return initialValue;
  }

  void increment() {
    state++;
  }
}
// import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

// dart run build_runner watch -d
part 'counter_provider.g.dart';

// class Counter extends Notifier<int> {
// class Counter extends AutoDisposeNotifier<int> {
// class Counter extends FamilyNotifier<int, int> {
// class Counter extends AutoDisposeFamilyNotifier<int, int> {
//   // int publicVar = 0; (불가능)
//   // private 변수 선언은 가능
//   // int _publicVar = 0; (가능)
//   @override
//   int arg: 추가 파라미터
//   int build(int arg) {
//     ref.onDispose(() {
//       print('[counterProvider] disposed');
//     });
//     // Counter의 initial state
//     // return 0;
//     return arg;
//   }
//
//   business logic
//   void increment() {
//     state++;
//   }
// }

// final counterProvider = NotifierProvider<Counter, int>(() {
//   return Counter();
// });

// constructor도 일종의 function
// constructor tear-offs: Notifier 인스턴스만을 리턴한다면...?
// Counter.new: 혼란 방지
// final counterProvider = NotifierProvider<Counter, int>(Counter.new);

// autoDispose: AutoDisposeNotifier
// final counterProvider = NotifierProvider.autoDispose<Counter, int>(Counter.new);

// family: FamilyNotifier
// final counterProvider = NotifierProvider.family<Counter, int, int>(Counter.new);

// autoDispose, family: AutoDisposeFamilyNotifier
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
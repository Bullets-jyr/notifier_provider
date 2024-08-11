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
//   // int _publicVar = 0; (private 가능)
//   @override
//   int arg: 추가 파라미터 (FamilyNotifier를 사용할 때 필요함)
//   initialValue 사용불가
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

// 사실 Notifier의 subclass인 Counter는 이미
// ref property를 가지고 있기 때문에 function argument로 ref를 전달할 필요가 없습니다.
// 그러면 ref를 지워보겠습니다. 그랬더니 에러가 사라졌습니다.
// 정확하게 constructor tear-offs를 적용할 수 있는 형태입니다.
// constructor tear-offs를 적용하겠습니다.
// 이렇게 Provider를 만들었으 다른 Provider들과 마찬가지로 state의 변화를 listen할 수도 있고
// state 변화를 listen하지 않고 Notifier instance 자체에 엑세스할 수도 있습니다.
// final counterProvider = NotifierProvider<Counter, int>(() {
//   return Counter();
// });

// constructor도 기본적으로 function
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
  // named argument 가능!
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
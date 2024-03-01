import '../../models/activity.dart';
import '../../providers/dio_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'enum_async_activity_state.dart';

part 'enum_async_activity_provider.g.dart';

@riverpod
class MyCounter extends _$MyCounter {
  @override
  int build() {
    return 0;
  }

  void increment() => state++;
}

@riverpod
class EnumAsyncActivity extends _$EnumAsyncActivity {
  int _errorCounter = 0;

  EnumAsyncActivity() {
    // Exception
    // state = EnumAsyncActivityState.initial();
    print('[EnumAsyncActivity] constructor called');
  }

  @override
  EnumAsyncActivityState build() {
    print('[enumAsyncActivityProvider] initialized');
    ref.onDispose(() {
      print('[enumAsyncActivityProvider] disposed');
    });
    ref.watch(myCounterProvider);
    print('hashCode: $hashCode');
    // Exception
    state = EnumAsyncActivityState.initial();
    // state = EnumAsyncActivityState(
    //   status: ActivityStatus.failure,
    //   activity: Activity.empty(),
    //   error: 'Initial Failure',
    // );
    fetchActivity(activityTypes[0]);
    // Provider가 외부에 노출되는 최초의 state는 build()에서 return한 값입니다.
    return EnumAsyncActivityState.initial();
  }

  Future<void> fetchActivity(String activityType) async {
    print('hashCode in fetchActivity: $hashCode');
    state = state.copyWith(status: ActivityStatus.loading);

    try {
      print('_errorCounter: $_errorCounter');
      if (_errorCounter++ % 2 != 1) {
        await Future.delayed(const Duration(milliseconds: 500));
        throw 'Fail to fetch activity';
      }

      final response = await ref.read(dioProvider).get('?type=$activityType');

      final activity = Activity.fromJson(response.data);

      state = state.copyWith(
        status: ActivityStatus.success,
        activity: activity,
      );
    } catch (e) {
      state = state.copyWith(
        status: ActivityStatus.failure,
        error: e.toString(),
      );
    }
  }
}
import 'sealed_activity_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../models/activity.dart';
import '../../providers/dio_provider.dart';

part 'sealed_activity_provider.g.dart';

@riverpod
class SealedActivity extends _$SealedActivity {
  int _errorCounter = 0;

  @override
  SealedActivityState build() {
    ref.onDispose(() {
      print('[sealedActivityProvider] disposed');
    });
    print('hashCode: $hashCode');
    return const SealedActivityInitial();
  }

  Future<void> fetchActivity(String activityType) async {
    print('hashCode in fetchActivity: $hashCode');
    state = const SealedActivityLoading();

    try {
      print('_errorCounter: $_errorCounter');
      if (_errorCounter++ % 2 != 1) {
        await Future.delayed(const Duration(milliseconds: 500));
        throw 'Fail to fetch activity';
      }

      final response = await ref.read(dioProvider).get('?type=$activityType');

      final List activityList = response.data;

      final activities = [
        for (final activity in activityList) Activity.fromJson(activity),
      ];

      state = SealedActivitySuccess(activities: activities);
    } catch (e) {
      state = SealedActivityFailure(error: e.toString());
    }
  }
}

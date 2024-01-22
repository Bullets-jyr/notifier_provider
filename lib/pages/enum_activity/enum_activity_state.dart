import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import '../../models/activity.dart';

part 'enum_activity_state.freezed.dart';

enum ActivityStatus {
  // initial: 선택적으로 적용할 수 있습니다.
  initial,
  loading,
  success,
  failure,
}

@freezed
class EnumActivityState with _$EnumActivityState {
  const factory EnumActivityState({
    required ActivityStatus status,
    required Activity activity,
    required String error,
  }) = _EnumActivityState;

  factory EnumActivityState.initial() {
    return EnumActivityState(
      status: ActivityStatus.initial,
      activity: Activity.empty(),
      error: '',
    );
  }
}
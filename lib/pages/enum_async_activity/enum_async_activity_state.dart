import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import '../../models/activity.dart';

part 'enum_async_activity_state.freezed.dart';

// status
enum ActivityStatus {
  // initial
  loading,
  success,
  failure,
}

// state
@freezed
class EnumAsyncActivityState with _$EnumAsyncActivityState {
  const factory EnumAsyncActivityState({
    // status
    required ActivityStatus status,
    // data
    required Activity activity,
    // error
    required String error,
  }) = _EnumAsyncActivityState;

  factory EnumAsyncActivityState.initial() {
    return EnumAsyncActivityState(
      status: ActivityStatus.loading,
      activity: Activity.empty(),
      error: '',
    );
  }
}
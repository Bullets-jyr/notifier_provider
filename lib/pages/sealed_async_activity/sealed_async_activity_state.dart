import '../../models/activity.dart';

sealed class SealedAsyncActivityState {
  const SealedAsyncActivityState();
}

final class SealedAsyncActivityLoading extends SealedAsyncActivityState {
  const SealedAsyncActivityLoading();

  @override
  String toString() => 'SealedAsyncActivityLoading()';
}

final class SealedAsyncActivitySuccess extends SealedAsyncActivityState {
  final List<Activity> activities;
  const SealedAsyncActivitySuccess({
    required this.activities,
  });

  @override
  String toString() => 'SealedAsyncActivitySuccess(activities: $activities)';
}

final class SealedAsyncActivityFailure extends SealedAsyncActivityState {
  final String error;
  const SealedAsyncActivityFailure({
    required this.error,
  });

  @override
  String toString() => 'SealedAsyncActivityFailure(error: $error)';
}
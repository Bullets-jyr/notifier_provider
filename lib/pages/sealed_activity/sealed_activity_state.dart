import '../../models/activity.dart';

// 암묵적으로 abstract
sealed class SealedActivityState {
  const SealedActivityState();
}

final class SealedActivityInitial extends SealedActivityState {
  const SealedActivityInitial();

  @override
  String toString() => 'SealedActivityInitial()';
}

final class SealedActivityLoading extends SealedActivityState {
  const SealedActivityLoading();

  @override
  String toString() => 'SealedActivityLoading()';
}

final class SealedActivitySuccess extends SealedActivityState {
  final List<Activity> activities;

  const SealedActivitySuccess({
    required this.activities,
  });

  @override
  String toString() => 'SealedActivitySuccess(activity: $activities)';
}

final class SealedActivityFailure extends SealedActivityState {
  final String error;

  const SealedActivityFailure({
    required this.error,
  });

  @override
  String toString() => 'SealedActivityFailure(error: $error)';
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'activity.freezed.dart';
part 'activity.g.dart';

// Remote API Data Model
@freezed
class Activity with _$Activity {
  const factory Activity({
    required String activity,
    required double availability,
    required String type,
    required int participants,
    required double price,
    required String accessibility,
    required String duration,
    required bool kidFriendly,
    required String link,
    required String key,
  }) = _Activity;

  factory Activity.fromJson(Map<String, dynamic> json) => _$ActivityFromJson(json);

  // 초기 state 설정
  factory Activity.empty() => const Activity(
    activity: '',
    availability: 0.0,
    type: '',
    participants: 0,
    price: 0.0,
    accessibility: '',
    duration: '',
    kidFriendly: false,
    link: '',
    key: '',
  );
}

final activityTypes = [
  "education",
  "recreational",
  "social",
  "charity",
  "cooking",
  "relaxation",
  "busywork"
];
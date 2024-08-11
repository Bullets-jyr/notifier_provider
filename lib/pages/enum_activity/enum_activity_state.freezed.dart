// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'enum_activity_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EnumActivityState {
  ActivityStatus get status => throw _privateConstructorUsedError;
  List<Activity> get activities => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;

  /// Create a copy of EnumActivityState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EnumActivityStateCopyWith<EnumActivityState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EnumActivityStateCopyWith<$Res> {
  factory $EnumActivityStateCopyWith(
          EnumActivityState value, $Res Function(EnumActivityState) then) =
      _$EnumActivityStateCopyWithImpl<$Res, EnumActivityState>;
  @useResult
  $Res call({ActivityStatus status, List<Activity> activities, String error});
}

/// @nodoc
class _$EnumActivityStateCopyWithImpl<$Res, $Val extends EnumActivityState>
    implements $EnumActivityStateCopyWith<$Res> {
  _$EnumActivityStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EnumActivityState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? activities = null,
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ActivityStatus,
      activities: null == activities
          ? _value.activities
          : activities // ignore: cast_nullable_to_non_nullable
              as List<Activity>,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EnumActivityStateImplCopyWith<$Res>
    implements $EnumActivityStateCopyWith<$Res> {
  factory _$$EnumActivityStateImplCopyWith(_$EnumActivityStateImpl value,
          $Res Function(_$EnumActivityStateImpl) then) =
      __$$EnumActivityStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ActivityStatus status, List<Activity> activities, String error});
}

/// @nodoc
class __$$EnumActivityStateImplCopyWithImpl<$Res>
    extends _$EnumActivityStateCopyWithImpl<$Res, _$EnumActivityStateImpl>
    implements _$$EnumActivityStateImplCopyWith<$Res> {
  __$$EnumActivityStateImplCopyWithImpl(_$EnumActivityStateImpl _value,
      $Res Function(_$EnumActivityStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of EnumActivityState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? activities = null,
    Object? error = null,
  }) {
    return _then(_$EnumActivityStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ActivityStatus,
      activities: null == activities
          ? _value._activities
          : activities // ignore: cast_nullable_to_non_nullable
              as List<Activity>,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EnumActivityStateImpl
    with DiagnosticableTreeMixin
    implements _EnumActivityState {
  const _$EnumActivityStateImpl(
      {required this.status,
      required final List<Activity> activities,
      required this.error})
      : _activities = activities;

  @override
  final ActivityStatus status;
  final List<Activity> _activities;
  @override
  List<Activity> get activities {
    if (_activities is EqualUnmodifiableListView) return _activities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_activities);
  }

  @override
  final String error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EnumActivityState(status: $status, activities: $activities, error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EnumActivityState'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('activities', activities))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EnumActivityStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._activities, _activities) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(_activities), error);

  /// Create a copy of EnumActivityState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EnumActivityStateImplCopyWith<_$EnumActivityStateImpl> get copyWith =>
      __$$EnumActivityStateImplCopyWithImpl<_$EnumActivityStateImpl>(
          this, _$identity);
}

abstract class _EnumActivityState implements EnumActivityState {
  const factory _EnumActivityState(
      {required final ActivityStatus status,
      required final List<Activity> activities,
      required final String error}) = _$EnumActivityStateImpl;

  @override
  ActivityStatus get status;
  @override
  List<Activity> get activities;
  @override
  String get error;

  /// Create a copy of EnumActivityState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EnumActivityStateImplCopyWith<_$EnumActivityStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

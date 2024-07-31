// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timestamp.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Timestamp _$TimestampFromJson(Map<String, dynamic> json) {
  return _TimestampModel.fromJson(json);
}

/// @nodoc
mixin _$Timestamp {
  int get seconds => throw _privateConstructorUsedError;
  int get nanoseconds => throw _privateConstructorUsedError;

  /// Serializes this Timestamp to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Timestamp
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TimestampCopyWith<Timestamp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimestampCopyWith<$Res> {
  factory $TimestampCopyWith(Timestamp value, $Res Function(Timestamp) then) =
      _$TimestampCopyWithImpl<$Res, Timestamp>;
  @useResult
  $Res call({int seconds, int nanoseconds});
}

/// @nodoc
class _$TimestampCopyWithImpl<$Res, $Val extends Timestamp>
    implements $TimestampCopyWith<$Res> {
  _$TimestampCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Timestamp
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seconds = null,
    Object? nanoseconds = null,
  }) {
    return _then(_value.copyWith(
      seconds: null == seconds
          ? _value.seconds
          : seconds // ignore: cast_nullable_to_non_nullable
              as int,
      nanoseconds: null == nanoseconds
          ? _value.nanoseconds
          : nanoseconds // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TimestampModelImplCopyWith<$Res>
    implements $TimestampCopyWith<$Res> {
  factory _$$TimestampModelImplCopyWith(_$TimestampModelImpl value,
          $Res Function(_$TimestampModelImpl) then) =
      __$$TimestampModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int seconds, int nanoseconds});
}

/// @nodoc
class __$$TimestampModelImplCopyWithImpl<$Res>
    extends _$TimestampCopyWithImpl<$Res, _$TimestampModelImpl>
    implements _$$TimestampModelImplCopyWith<$Res> {
  __$$TimestampModelImplCopyWithImpl(
      _$TimestampModelImpl _value, $Res Function(_$TimestampModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of Timestamp
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seconds = null,
    Object? nanoseconds = null,
  }) {
    return _then(_$TimestampModelImpl(
      seconds: null == seconds
          ? _value.seconds
          : seconds // ignore: cast_nullable_to_non_nullable
              as int,
      nanoseconds: null == nanoseconds
          ? _value.nanoseconds
          : nanoseconds // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TimestampModelImpl extends _TimestampModel {
  const _$TimestampModelImpl({this.seconds = 0, this.nanoseconds = 0})
      : super._();

  factory _$TimestampModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimestampModelImplFromJson(json);

  @override
  @JsonKey()
  final int seconds;
  @override
  @JsonKey()
  final int nanoseconds;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimestampModelImpl &&
            (identical(other.seconds, seconds) || other.seconds == seconds) &&
            (identical(other.nanoseconds, nanoseconds) ||
                other.nanoseconds == nanoseconds));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, seconds, nanoseconds);

  /// Create a copy of Timestamp
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TimestampModelImplCopyWith<_$TimestampModelImpl> get copyWith =>
      __$$TimestampModelImplCopyWithImpl<_$TimestampModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TimestampModelImplToJson(
      this,
    );
  }
}

abstract class _TimestampModel extends Timestamp {
  const factory _TimestampModel({final int seconds, final int nanoseconds}) =
      _$TimestampModelImpl;
  const _TimestampModel._() : super._();

  factory _TimestampModel.fromJson(Map<String, dynamic> json) =
      _$TimestampModelImpl.fromJson;

  @override
  int get seconds;
  @override
  int get nanoseconds;

  /// Create a copy of Timestamp
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TimestampModelImplCopyWith<_$TimestampModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

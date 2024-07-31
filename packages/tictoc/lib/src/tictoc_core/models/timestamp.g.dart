// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timestamp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TimestampModelImpl _$$TimestampModelImplFromJson(Map<String, dynamic> json) =>
    _$TimestampModelImpl(
      seconds: (json['seconds'] as num?)?.toInt() ?? 0,
      nanoseconds: (json['nanoseconds'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$TimestampModelImplToJson(
        _$TimestampModelImpl instance) =>
    <String, dynamic>{
      'seconds': instance.seconds,
      'nanoseconds': instance.nanoseconds,
    };

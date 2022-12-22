// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_error_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BaseErrorModel _$$_BaseErrorModelFromJson(Map<String, dynamic> json) =>
    _$_BaseErrorModel(
      message: json['message'] as String?,
      success: json['success'] as bool?,
      token: json['token'] as String?,
    );

Map<String, dynamic> _$$_BaseErrorModelToJson(_$_BaseErrorModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'success': instance.success,
      'token': instance.token,
    };

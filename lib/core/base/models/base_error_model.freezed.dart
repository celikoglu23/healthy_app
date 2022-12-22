// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_error_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BaseErrorModel _$BaseErrorModelFromJson(Map<String, dynamic> json) {
  return _BaseErrorModel.fromJson(json);
}

/// @nodoc
mixin _$BaseErrorModel {
  String? get message => throw _privateConstructorUsedError;
  bool? get success => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BaseErrorModelCopyWith<BaseErrorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseErrorModelCopyWith<$Res> {
  factory $BaseErrorModelCopyWith(
          BaseErrorModel value, $Res Function(BaseErrorModel) then) =
      _$BaseErrorModelCopyWithImpl<$Res, BaseErrorModel>;
  @useResult
  $Res call({String? message, bool? success, String? token});
}

/// @nodoc
class _$BaseErrorModelCopyWithImpl<$Res, $Val extends BaseErrorModel>
    implements $BaseErrorModelCopyWith<$Res> {
  _$BaseErrorModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? success = freezed,
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BaseErrorModelCopyWith<$Res>
    implements $BaseErrorModelCopyWith<$Res> {
  factory _$$_BaseErrorModelCopyWith(
          _$_BaseErrorModel value, $Res Function(_$_BaseErrorModel) then) =
      __$$_BaseErrorModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, bool? success, String? token});
}

/// @nodoc
class __$$_BaseErrorModelCopyWithImpl<$Res>
    extends _$BaseErrorModelCopyWithImpl<$Res, _$_BaseErrorModel>
    implements _$$_BaseErrorModelCopyWith<$Res> {
  __$$_BaseErrorModelCopyWithImpl(
      _$_BaseErrorModel _value, $Res Function(_$_BaseErrorModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? success = freezed,
    Object? token = freezed,
  }) {
    return _then(_$_BaseErrorModel(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BaseErrorModel implements _BaseErrorModel {
  const _$_BaseErrorModel({this.message, this.success, this.token});

  factory _$_BaseErrorModel.fromJson(Map<String, dynamic> json) =>
      _$$_BaseErrorModelFromJson(json);

  @override
  final String? message;
  @override
  final bool? success;
  @override
  final String? token;

  @override
  String toString() {
    return 'BaseErrorModel(message: $message, success: $success, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BaseErrorModel &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, success, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BaseErrorModelCopyWith<_$_BaseErrorModel> get copyWith =>
      __$$_BaseErrorModelCopyWithImpl<_$_BaseErrorModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BaseErrorModelToJson(
      this,
    );
  }

  @override
  BaseErrorModel fromJson(Map<String, dynamic> json) {
    // TODO: implement fromJson
    throw UnimplementedError();
  }
}

abstract class _BaseErrorModel implements BaseErrorModel {
  const factory _BaseErrorModel(
      {final String? message,
      final bool? success,
      final String? token}) = _$_BaseErrorModel;

  factory _BaseErrorModel.fromJson(Map<String, dynamic> json) =
      _$_BaseErrorModel.fromJson;

  @override
  String? get message;
  @override
  bool? get success;
  @override
  String? get token;
  @override
  @JsonKey(ignore: true)
  _$$_BaseErrorModelCopyWith<_$_BaseErrorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

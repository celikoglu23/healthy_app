import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vexana/vexana.dart';

part 'base_error_model.freezed.dart';
part 'base_error_model.g.dart';

@freezed
class BaseErrorModel extends INetworkModel<BaseErrorModel>
    with _$BaseErrorModel {
  const factory BaseErrorModel({
    String? message,
    bool? success,
    String? token,
  }) = _BaseErrorModel;

  factory BaseErrorModel.fromJson(Map<String, Object?> json) =>
      _$BaseErrorModelFromJson(json);

  @override
  BaseErrorModel fromJson(Map<String, dynamic> json) =>
      BaseErrorModel.fromJson(json);
}

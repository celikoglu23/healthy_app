import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';

part 'auth_response_model.g.dart';

@JsonSerializable()
class AuthResponseModel extends INetworkModel<AuthResponseModel> {
  bool? success;
  String? message;
  String? token;

  AuthResponseModel({
    this.success,
    this.message,
    this.token,
  });

  @override
  fromJson(Map<String, dynamic> json) {
    return _$AuthResponseModelFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$AuthResponseModelToJson(this);
  }

  factory AuthResponseModel.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseModelFromJson(json);
}

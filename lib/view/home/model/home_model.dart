import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';

part 'home_model.g.dart';

/// [HomeModel] is not a correct naming. Named as such as an example,
/// please edit here according to the project's requirements.

@JsonSerializable()
class HomeModel extends INetworkModel<HomeModel> {
  String? id;

  HomeModel({
    this.id,
  });

  @override
  fromJson(Map<String, dynamic> json) {
    return _$HomeModelFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$HomeModelToJson(this);
  }

  factory HomeModel.fromJson(Map<String, dynamic> json) =>
      _$HomeModelFromJson(json);
}

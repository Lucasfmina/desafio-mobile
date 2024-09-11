import 'package:aplicacao_base/data/models/address.model.dart';

class LocationInfoModel {
  String id;
  String name;
  AddressModel address;

  LocationInfoModel(
      {required this.id, required this.name, required this.address});

  LocationInfoModel.fromMap(Map<String, dynamic> map)
      : id = map['id'],
        name = map['name'],
        address = AddressModel.fromMap(map["address"]);

  Map<String, dynamic> toMap() {
    return {"id": id, "name": name, "address": address};
  }
}

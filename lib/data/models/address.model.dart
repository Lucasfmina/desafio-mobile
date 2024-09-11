class AddressModel {
  String city;
  String state;
  String address;
  String latitude;
  String longitude;

  AddressModel(
      {required this.city,
      required this.state,
      required this.address,
      required this.latitude,
      required this.longitude});

  AddressModel.fromMap(Map<String, dynamic> map)
      : city = map['city'],
        state = map['state'],
        address = map['address'],
        latitude = map['latitude'],
        longitude = map['longitude'];

  Map<String, dynamic> toMap() {
    return {
      "city": city,
      "state": state,
      "address": address,
      "latitude": latitude,
      "longitude": longitude,
    };
  }
}

class AddressModel {
  AddressModel({
      String? type, 
      String? image, 
      String? location, 
      String? floor, 
      String? building, 
      String? specific,}){
    _type = type;
    _image = image;
    _location = location;
    _floor = floor;
    _building = building;
    _specific = specific;
}

  AddressModel.fromJson(dynamic json) {
    _type = json['type'];
    _image = json['image'];
    _location = json['location'];
    _floor = json['floor'];
    _building = json['building'];
    _specific = json['specific'];
  }
  String? _type;
  String? _image;
  String? _location;
  String? _floor;
  String? _building;
  String? _specific;

  String? get type => _type;
  String? get image => _image;
  String? get location => _location;
  String? get floor => _floor;
  String? get building => _building;
  String? get specific => _specific;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['type'] = _type;
    map['image'] = _image;
    map['location'] = _location;
    map['floor'] = _floor;
    map['building'] = _building;
    map['specific'] = _specific;
    return map;
  }

}
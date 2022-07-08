class AddModel {
  AddModel({
      String? image, 
      String? id,}){
    _image = image;
    _id = id;
}

  AddModel.fromJson(dynamic json) {
    _image = json['image'];
    _id = json['id'];
  }
  String? _image;
  String? _id;

  String? get image => _image;
  String? get id => _id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['image'] = _image;
    map['id'] = _id;
    return map;
  }

}
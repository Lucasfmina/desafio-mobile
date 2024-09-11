class VideoInfoModel {
  String title;
  String subtitle;
  String description;

  VideoInfoModel(
      {required this.title, required this.subtitle, required this.description});

  VideoInfoModel.fromMap(Map<String, dynamic> map)
      : title = map['title'],
        subtitle = map['subtitle'],
        description = map['description'];

  Map<String, dynamic> toMap() {
    return {"title": title, "subtitle": subtitle, "description": description};
  }
}

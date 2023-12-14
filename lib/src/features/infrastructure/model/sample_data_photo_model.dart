import 'package:arab_therapy_task/src/features/domain/entity/sample_data_photo_entity.dart';

class SampleDataPhotoModel extends SampleDataPhoto {
  String url;
  String title;
  int user;
  String description;
  int id;

  SampleDataPhotoModel({
    required this.url,
    required this.title,
    required this.user,
    required this.description,
    required this.id,
  }) : super(title: title, description: description, imageUrl: url, id: id);

  factory SampleDataPhotoModel.fromJson(Map<String, dynamic> json) =>
      SampleDataPhotoModel(
        url: json["url"],
        title: json["title"],
        user: json["user"],
        description: json["description"],
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "url": url,
        "title": title,
        "user": user,
        "description": description,
        "id": id,
      };
}

class Character {
  late List<Results> results;

  Character.fromJson(Map<String, dynamic> json) {
    results = json['results'];
  }
}

class Results {
  late int id;
  late String name;
  late String AliveOrDeadStatus;
  late String humanOrAlien;
  late String gender;
  late String imageUrl;
  late List<dynamic> episodesApiUrlCharacterAppearsList;
  late String characterApiUrl;
  late String creationDate;

  Results.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    AliveOrDeadStatus = json['status'];
    humanOrAlien = json['species'];
    gender = json['gender'];
    imageUrl = json['image'];
    episodesApiUrlCharacterAppearsList = json['episode'];
    characterApiUrl = json['url'];
    creationDate = json['created'];
  }
}

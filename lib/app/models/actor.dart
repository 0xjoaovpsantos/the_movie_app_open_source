class Actor {
  int id;
  String name;
  String profilePath;

  Actor({this.id, this.name, this.profilePath});

  Actor.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    profilePath = json['profile_path'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['profile_path'] = this.profilePath;
    return data;
  }
}

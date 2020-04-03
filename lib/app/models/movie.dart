class Movie {
  int id;
  String posterPath;
  String title;
  String releaseDate;

  Movie({this.id, this.posterPath, this.title, this.releaseDate});

  Movie.fromJson(Map<String, dynamic> json) {
    id = json['id'] ?? "";
    posterPath = json['poster_path'] ?? "";
    title = json['title'] ?? "";
    releaseDate = json['release_date'] ?? "";
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['poster_path'] = this.posterPath;
    data['title'] = this.title;
    data['release_date'] = this.releaseDate;
    return data;
  }
}

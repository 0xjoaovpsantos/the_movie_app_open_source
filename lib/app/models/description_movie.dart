class DescriptionMovie {
  String backdropPath;
  List<Genres> genres;
  int id;
  String overview;
  String posterPath;
  String releaseDate;
  int runtime;
  String title;

  DescriptionMovie({
    this.backdropPath,
    this.genres,
    this.id,
    this.overview,
    this.posterPath,
    this.releaseDate,
    this.runtime,
    this.title,
  });

  DescriptionMovie.fromJson(Map<String, dynamic> json) {
    backdropPath = json['backdrop_path'];

    if (json['genres'] != null) {
      genres = new List<Genres>();
      json['genres'].forEach((v) {
        genres.add(new Genres.fromJson(v));
      });
    }

    id = json['id'];

    overview = json['overview'];

    posterPath = json['poster_path'];

    releaseDate = json['release_date'];

    runtime = json['runtime'];

    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['backdrop_path'] = this.backdropPath;

    if (this.genres != null) {
      data['genres'] = this.genres.map((v) => v.toJson()).toList();
    }

    data['id'] = this.id;

    data['overview'] = this.overview;

    data['poster_path'] = this.posterPath;

    data['release_date'] = this.releaseDate;

    data['runtime'] = this.runtime;

    data['title'] = this.title;

    return data;
  }
}

class Genres {
  int id;
  String name;

  Genres({this.id, this.name});

  Genres.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    return data;
  }
}

class Movie {
  String title;
  String backDropPath;
  String originalTitle;
  String overview;
  String posterPath;
  String releaseDate;
  double voteAverage;

  Movie({
    required this.title,
    required this.backDropPath,
    required this.originalTitle,
    required this.overview,
    required this.posterPath,
    required this.releaseDate,
    required this.voteAverage,
  });

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      title: json["title"], 
      backDropPath: json["backdrop_Path"], 
      originalTitle: json["original_Title"], 
      overview: json["overview"], 
      posterPath: json["poster_path"], 
      releaseDate: json["release_Date"], 
      voteAverage: json["vote_average"],
    );
  }
}
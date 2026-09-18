class Movie {
  String title;
  String studio;
  String rating;

  Movie(
    this.title,
    this.studio, [
    this.rating = 'PG',
  ]);

  static List<Movie> getPG(List<Movie> movies) {
    List<Movie> pgMovies = [];

    for (Movie movie in movies) {
      if (movie.rating.contains('PG')) {
        pgMovies.add(movie);
      }
    }

    return pgMovies;
  }

  void displayMovie() {
    print('Title: $title');
    print('Studio: $studio');
    print('Rating: $rating');
  }
}

void main() {
  // Constructor with rating
  Movie movie1 = Movie(
    'Casino Royale',
    'Eon Productions',
    'PG13',
  );

  // Constructor using default rating
  Movie movie2 = Movie(
    'The Lion King',
    'Walt Disney',
  );

  Movie movie3 = Movie(
    'Avengers',
    'Marvel Studios',
    'PG',
  );

  movie1.displayMovie();
  print('--------------------');

  movie2.displayMovie();
  print('--------------------');

  movie3.displayMovie();
  print('--------------------');

  List<Movie> movies = [
    movie1,
    movie2,
    movie3,
  ];

  List<Movie> pgMovies = Movie.getPG(movies);

  print('Movies with PG in their rating:');

  for (Movie movie in pgMovies) {
    print('${movie.title} - ${movie.rating}');
  }
}
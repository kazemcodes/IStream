import 'package:istream/sources/models/MovieInfo.dart';

class MoviePageInfo {
  final List<MovieInfo> movies;
  final bool hasNextPage;

  MoviePageInfo(this.movies, this.hasNextPage);
}

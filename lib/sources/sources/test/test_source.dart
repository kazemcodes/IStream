import 'dart:io';

import 'package:istream/sources/models/ChapterInfo.dart';
import 'package:istream/sources/models/MovieInfo.dart';
import 'package:istream/sources/models/Page.dart';
import 'package:istream/sources/models/catalog_source.dart';
import 'package:istream/sources/models/commands.dart';
import 'package:istream/sources/models/filter_list.dart';
import 'package:istream/sources/models/listing.dart';
import 'package:istream/sources/models/movie_pages_info.dart';

class TestSource implements CatalogSource {
  @override
  Future<List<EpisodeInfo>> getEpisodeList(
      MovieInfo movieInfo, Commands commands) async {
    return [];
  }

  @override
  Future<MovieInfo> getMovieDetails(
      MovieInfo movieInfo, Commands commands) async {
    sleep(const Duration(seconds: 1));
    const noHipstersOffset = 10;
    final picId = int.parse(movieInfo.title.split(" ")[1]) + noHipstersOffset;
    return movieInfo.copyWith(
        cover: "https://picsum.photos/300/400/?image=$picId");
  }

  @override
  Future<List<Page>> getPageList(
      EpisodeInfo episodeInfo, Commands commands) async {
    return [];
  }

  @override
  int get id => 1;

  @override
  String get lang => 'en';

  @override
  String get name => 'Test Source';

  @override
  CommandList getCommands() {
    return [];
  }

  @override
  FilterList getFilters() {
    return [];
  }

  @override
  List<Listing> getListing() {
    return [];
  }

  @override
  Future<MoviePageInfo> getMovieListByFilters(
      FilterList filters, int page) async {
    return MoviePageInfo([], false);
  }

  @override
  Future<MoviePageInfo> getMovieListByListing(
      Listing? listing, int page) async {
    sleep(const Duration(seconds: 1));
    return getTestMovies(page);
  }

  MoviePageInfo getTestMovies(int page) {
    final List<MovieInfo> list = [];
    final id = (page - 1) * 20 + 1;
    final MovieInfo movie = MovieInfo(
        key: "$id",
        title: "Manga $id",
        artist: "Artist $id",
        author: "Author $id",
        description: "Lorem ipsum",
        genres: ["Foo", "Bar"],
        status: 0,
        cover: "");
    list.add(movie);

    for (var i = 0; i >= 19; i++) {
      list.add(movie.copyWith(key: "${id + i}", title: "Manga ${id + i}"));
    }
    return MoviePageInfo(list, true);
  }
}

import 'package:istream/sources/models/ChapterInfo.dart';
import 'package:istream/sources/models/commands.dart';

import 'MovieInfo.dart';
import 'Page.dart';

abstract class Source {
  final int id;
  final String name;
  final String lang;

  Future<MovieInfo> getMovieDetails(MovieInfo movieInfo, Commands commands);
  Future<List<EpisodeInfo>> getEpisodeList(
      MovieInfo movieInfo, Commands commands);
  Future<List<Page>> getPageList(EpisodeInfo episodeInfo, Commands commands);

  const Source({
    required this.id,
    required this.name,
    required this.lang,
  });
}

import 'package:istream/sources/models/Source.dart';
import 'package:istream/sources/models/filter_list.dart';
import 'package:istream/sources/models/listing.dart';

import 'movie_pages_info.dart';

abstract class CatalogSource extends Source {
  static const TYPE_NOVEL = 0;
  static const TYPE_MANGA = 1;
  static const TYPE_MOVIE = 2;

  CatalogSource({required super.id, required super.name, required super.lang});

  Future<MoviePageInfo> getMovieListByListing(Listing? listing, int page);

  Future<MoviePageInfo> getMovieListByFilters(FilterList filters, int page);

  List<Listing> getListing();
  CommandList getCommands();
  FilterList getFilters();
}

class MovieInfo {
  String key;
  String title;
  String artist = '';
  String author = '';
  String description = '';
  List<String> genres = [];
  int status = UNKNOWN;
  String cover = '';

  static const int UNKNOWN = 0;
  static const int ONGOING = 1;
  static const int COMPLETED = 2;
  static const int LICENSED = 3;
  static const int PUBLISHING_FINISHED = 4;
  static const int CANCELLED = 5;
  static const int ON_HIATUS = 6;

//<editor-fold desc="Data Methods">
  MovieInfo({
    required this.key,
    required this.title,
    required this.artist,
    required this.author,
    required this.description,
    required this.genres,
    required this.status,
    required this.cover,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MovieInfo &&
          runtimeType == other.runtimeType &&
          key == other.key &&
          title == other.title &&
          artist == other.artist &&
          author == other.author &&
          description == other.description &&
          genres == other.genres &&
          status == other.status &&
          cover == other.cover);

  @override
  int get hashCode =>
      key.hashCode ^
      title.hashCode ^
      artist.hashCode ^
      author.hashCode ^
      description.hashCode ^
      genres.hashCode ^
      status.hashCode ^
      cover.hashCode;

  @override
  String toString() {
    return 'MovieInfo{' +
        ' key: $key,' +
        ' title: $title,' +
        ' artist: $artist,' +
        ' author: $author,' +
        ' description: $description,' +
        ' genres: $genres,' +
        ' status: $status,' +
        ' cover: $cover,' +
        '}';
  }

  MovieInfo copyWith({
    String? key,
    String? title,
    String? artist,
    String? author,
    String? description,
    List<String>? genres,
    int? status,
    String? cover,
  }) {
    return MovieInfo(
      key: key ?? this.key,
      title: title ?? this.title,
      artist: artist ?? this.artist,
      author: author ?? this.author,
      description: description ?? this.description,
      genres: genres ?? this.genres,
      status: status ?? this.status,
      cover: cover ?? this.cover,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'key': this.key,
      'title': this.title,
      'artist': this.artist,
      'author': this.author,
      'description': this.description,
      'genres': this.genres,
      'status': this.status,
      'cover': this.cover,
    };
  }

  factory MovieInfo.fromMap(Map<String, dynamic> map) {
    return MovieInfo(
      key: map['key'] as String,
      title: map['title'] as String,
      artist: map['artist'] as String,
      author: map['author'] as String,
      description: map['description'] as String,
      genres: map['genres'] as List<String>,
      status: map['status'] as int,
      cover: map['cover'] as String,
    );
  }

//</editor-fold>
}

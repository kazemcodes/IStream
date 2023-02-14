class IMovie implements BaseMovie {
  @override
  final int id;
  @override
  final int sourceId;
  @override
  final String title;
  final String key;
  final String author;
  final String description;
  final List<String> genres;
  final int status;
  @override
  final String cover;
  @override
  final String customCover;
  @override
  final bool favorite;
  final int lastUpdate;
  final bool initialized;
  final int dateAdded;
  final int viewer;
  final int flags;

//<editor-fold desc="Data Methods">
  const IMovie({
    required this.id,
    required this.sourceId,
    required this.title,
    required this.key,
    required this.author,
    required this.description,
    required this.genres,
    required this.status,
    required this.cover,
    required this.customCover,
    required this.favorite,
    required this.lastUpdate,
    required this.initialized,
    required this.dateAdded,
    required this.viewer,
    required this.flags,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is IMovie &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          sourceId == other.sourceId &&
          title == other.title &&
          key == other.key &&
          author == other.author &&
          description == other.description &&
          genres == other.genres &&
          status == other.status &&
          cover == other.cover &&
          customCover == other.customCover &&
          favorite == other.favorite &&
          lastUpdate == other.lastUpdate &&
          initialized == other.initialized &&
          dateAdded == other.dateAdded &&
          viewer == other.viewer &&
          flags == other.flags);

  @override
  int get hashCode =>
      id.hashCode ^
      sourceId.hashCode ^
      title.hashCode ^
      key.hashCode ^
      author.hashCode ^
      description.hashCode ^
      genres.hashCode ^
      status.hashCode ^
      cover.hashCode ^
      customCover.hashCode ^
      favorite.hashCode ^
      lastUpdate.hashCode ^
      initialized.hashCode ^
      dateAdded.hashCode ^
      viewer.hashCode ^
      flags.hashCode;

  @override
  String toString() {
    return 'IMovie{ id: $id, sourceId: $sourceId, title: $title, key: $key, author: $author, description: $description, genres: $genres, status: $status, cover: $cover, customCover: $customCover, favorite: $favorite, lastUpdate: $lastUpdate, initilize: $initialized, dateAdded: $dateAdded, viewer: $viewer, flags: $flags,}';
  }

  IMovie copyWith({
    int? id,
    int? sourceId,
    String? title,
    String? key,
    String? author,
    String? description,
    List<String>? genres,
    int? status,
    String? cover,
    String? customCover,
    bool? favorite,
    int? lastUpdate,
    bool? initilize,
    int? dateAdded,
    int? viewer,
    int? flags,
  }) {
    return IMovie(
      id: id ?? this.id,
      sourceId: sourceId ?? this.sourceId,
      title: title ?? this.title,
      key: key ?? this.key,
      author: author ?? this.author,
      description: description ?? this.description,
      genres: genres ?? this.genres,
      status: status ?? this.status,
      cover: cover ?? this.cover,
      customCover: customCover ?? this.customCover,
      favorite: favorite ?? this.favorite,
      lastUpdate: lastUpdate ?? this.lastUpdate,
      initialized: initilize ?? this.initialized,
      dateAdded: dateAdded ?? this.dateAdded,
      viewer: viewer ?? this.viewer,
      flags: flags ?? this.flags,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': this.id,
      'sourceId': this.sourceId,
      'title': this.title,
      'key': this.key,
      'author': this.author,
      'description': this.description,
      'genres': this.genres,
      'status': this.status,
      'cover': this.cover,
      'customCover': this.customCover,
      'favorite': this.favorite,
      'lastUpdate': this.lastUpdate,
      'initilize': this.initialized,
      'dateAdded': this.dateAdded,
      'viewer': this.viewer,
      'flags': this.flags,
    };
  }

  factory IMovie.fromMap(Map<String, dynamic> map) {
    return IMovie(
      id: map['id'] as int,
      sourceId: map['sourceId'] as int,
      title: map['title'] as String,
      key: map['key'] as String,
      author: map['author'] as String,
      description: map['description'] as String,
      genres: map['genres'] as List<String>,
      status: map['status'] as int,
      cover: map['cover'] as String,
      customCover: map['customCover'] as String,
      favorite: map['favorite'] as bool,
      lastUpdate: map['lastUpdate'] as int,
      initialized: map['initilize'] as bool,
      dateAdded: map['dateAdded'] as int,
      viewer: map['viewer'] as int,
      flags: map['flags'] as int,
    );
  }

//</editor-fold>
}

class BaseMovie {
  final int id;
  final int sourceId;
  final String title;
  final bool favorite;
  final String cover;
  final String customCover;

//<editor-fold desc="Data Methods">
  const BaseMovie({
    required this.id,
    required this.sourceId,
    required this.title,
    required this.favorite,
    required this.cover,
    required this.customCover,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is BaseMovie &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          sourceId == other.sourceId &&
          title == other.title &&
          favorite == other.favorite &&
          cover == other.cover &&
          customCover == other.customCover);

  @override
  int get hashCode =>
      id.hashCode ^
      sourceId.hashCode ^
      title.hashCode ^
      favorite.hashCode ^
      cover.hashCode ^
      customCover.hashCode;

  @override
  String toString() {
    return 'BaseBook{ id: $id, sourceId: $sourceId, title: $title, favorite: $favorite, cover: $cover, customCover: $customCover,}';
  }

  BaseMovie copyWith({
    int? id,
    int? sourceId,
    String? title,
    bool? favorite,
    String? cover,
    String? customCover,
  }) {
    return BaseMovie(
      id: id ?? this.id,
      sourceId: sourceId ?? this.sourceId,
      title: title ?? this.title,
      favorite: favorite ?? this.favorite,
      cover: cover ?? this.cover,
      customCover: customCover ?? this.customCover,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'sourceId': sourceId,
      'title': title,
      'favorite': favorite,
      'cover': cover,
      'customCover': customCover,
    };
  }

  factory BaseMovie.fromMap(Map<String, dynamic> map) {
    return BaseMovie(
      id: map['id'] as int,
      sourceId: map['sourceId'] as int,
      title: map['title'] as String,
      favorite: map['favorite'] as bool,
      cover: map['cover'] as String,
      customCover: map['customCover'] as String,
    );
  }

//</editor-fold>
}

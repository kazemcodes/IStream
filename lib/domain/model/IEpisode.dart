class Episode {
  final int id;
  final int bookId;
  final String key;
  final String name;
  final bool read;
  final bool bookmark;
  final int dateUpload;
  final int dateFetch;
  final int sourceOrder;
  final String content;
  final int number;
  final String translator;
  final int lastPageRead;
  final int type;

//<editor-fold desc="Data Methods">
  const Episode({
    required this.id,
    required this.bookId,
    required this.key,
    required this.name,
    required this.read,
    required this.bookmark,
    required this.dateUpload,
    required this.dateFetch,
    required this.sourceOrder,
    required this.content,
    required this.number,
    required this.translator,
    required this.lastPageRead,
    required this.type,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Episode &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          bookId == other.bookId &&
          key == other.key &&
          name == other.name &&
          read == other.read &&
          bookmark == other.bookmark &&
          dateUpload == other.dateUpload &&
          dateFetch == other.dateFetch &&
          sourceOrder == other.sourceOrder &&
          content == other.content &&
          number == other.number &&
          translator == other.translator &&
          lastPageRead == other.lastPageRead &&
          type == other.type);

  @override
  int get hashCode =>
      id.hashCode ^
      bookId.hashCode ^
      key.hashCode ^
      name.hashCode ^
      read.hashCode ^
      bookmark.hashCode ^
      dateUpload.hashCode ^
      dateFetch.hashCode ^
      sourceOrder.hashCode ^
      content.hashCode ^
      number.hashCode ^
      translator.hashCode ^
      lastPageRead.hashCode ^
      type.hashCode;

  @override
  String toString() {
    return 'Episode{' +
        ' id: $id,' +
        ' bookId: $bookId,' +
        ' key: $key,' +
        ' name: $name,' +
        ' read: $read,' +
        ' bookmark: $bookmark,' +
        ' dateUpload: $dateUpload,' +
        ' dateFetch: $dateFetch,' +
        ' sourceOrder: $sourceOrder,' +
        ' content: $content,' +
        ' number: $number,' +
        ' translator: $translator,' +
        ' lastPageRead: $lastPageRead,' +
        ' type: $type,' +
        '}';
  }

  Episode copyWith({
    int? id,
    int? bookId,
    String? key,
    String? name,
    bool? read,
    bool? bookmark,
    int? dateUpload,
    int? dateFetch,
    int? sourceOrder,
    String? content,
    int? number,
    String? translator,
    int? lastPageRead,
    int? type,
  }) {
    return Episode(
      id: id ?? this.id,
      bookId: bookId ?? this.bookId,
      key: key ?? this.key,
      name: name ?? this.name,
      read: read ?? this.read,
      bookmark: bookmark ?? this.bookmark,
      dateUpload: dateUpload ?? this.dateUpload,
      dateFetch: dateFetch ?? this.dateFetch,
      sourceOrder: sourceOrder ?? this.sourceOrder,
      content: content ?? this.content,
      number: number ?? this.number,
      translator: translator ?? this.translator,
      lastPageRead: lastPageRead ?? this.lastPageRead,
      type: type ?? this.type,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': this.id,
      'bookId': this.bookId,
      'key': this.key,
      'name': this.name,
      'read': this.read,
      'bookmark': this.bookmark,
      'dateUpload': this.dateUpload,
      'dateFetch': this.dateFetch,
      'sourceOrder': this.sourceOrder,
      'content': this.content,
      'number': this.number,
      'translator': this.translator,
      'lastPageRead': this.lastPageRead,
      'type': this.type,
    };
  }

  factory Episode.fromMap(Map<String, dynamic> map) {
    return Episode(
      id: map['id'] as int,
      bookId: map['bookId'] as int,
      key: map['key'] as String,
      name: map['name'] as String,
      read: map['read'] as bool,
      bookmark: map['bookmark'] as bool,
      dateUpload: map['dateUpload'] as int,
      dateFetch: map['dateFetch'] as int,
      sourceOrder: map['sourceOrder'] as int,
      content: map['content'] as String,
      number: map['number'] as int,
      translator: map['translator'] as String,
      lastPageRead: map['lastPageRead'] as int,
      type: map['type'] as int,
    );
  }

//</editor-fold>
}
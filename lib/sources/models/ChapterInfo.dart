class EpisodeInfo {
  final String key;
  final String name;
  int dateUpload = 0;
  int number = -1;
  String scanlator = '';
  final int type = EpisodeInfo.MOVIE;

  static const MIX = 0;
  static const NOVEL = 1;
  static const MUSIC = 2;
  static const MANGA = 3;
  static const MOVIE = 4;

//<editor-fold desc="Data Methods">

  EpisodeInfo({
    required this.key,
    required this.name,
    required this.dateUpload,
    required this.number,
    required this.scanlator,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is EpisodeInfo &&
          runtimeType == other.runtimeType &&
          key == other.key &&
          name == other.name &&
          dateUpload == other.dateUpload &&
          number == other.number &&
          scanlator == other.scanlator);

  @override
  int get hashCode =>
      key.hashCode ^
      name.hashCode ^
      dateUpload.hashCode ^
      number.hashCode ^
      scanlator.hashCode;

  @override
  String toString() {
    return 'ChapterInfo{' +
        ' key: $key,' +
        ' name: $name,' +
        ' dateUpload: $dateUpload,' +
        ' number: $number,' +
        ' scanlator: $scanlator,' +
        '}';
  }

  EpisodeInfo copyWith({
    String? key,
    String? name,
    int? dateUpload,
    int? number,
    String? scanlator,
  }) {
    return EpisodeInfo(
      key: key ?? this.key,
      name: name ?? this.name,
      dateUpload: dateUpload ?? this.dateUpload,
      number: number ?? this.number,
      scanlator: scanlator ?? this.scanlator,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'key': this.key,
      'name': this.name,
      'dateUpload': this.dateUpload,
      'number': this.number,
      'scanlator': this.scanlator,
    };
  }

  factory EpisodeInfo.fromMap(Map<String, dynamic> map) {
    return EpisodeInfo(
      key: map['key'] as String,
      name: map['name'] as String,
      dateUpload: map['dateUpload'] as int,
      number: map['number'] as int,
      scanlator: map['scanlator'] as String,
    );
  }

//</editor-fold>
}

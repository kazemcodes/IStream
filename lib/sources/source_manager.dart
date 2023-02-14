import 'package:get/get.dart';
import 'package:istream/sources/sources/test/test_source.dart';

import 'models/Source.dart';

class SourceManager {
  final List<Source> availableSources = [TestSource()];

  Source? findSource(int sourceId) {
    return availableSources.firstWhereOrNull((element) {
      return element.id == sourceId;
    });
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:istream/sources/models/Source.dart';
import 'package:istream/sources/source_manager.dart';

class SourceScreen extends StatefulWidget {
  int sourceId;
  @override
  State<SourceScreen> createState() => _SourceScreenState();

  SourceScreen({
    required this.sourceId,
  });
}

class _SourceScreenState extends State<SourceScreen> {
  SourceManager manger = Get.find();
  Source? source;
  @override
  void initState() {
    source = manger.findSource(widget.sourceId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(source?.name.toString() ?? "Unknown Source"),
      ),
    );
  }
}

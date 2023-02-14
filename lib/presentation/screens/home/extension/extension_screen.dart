import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:istream/presentation/screens/source/source_screen.dart';
import 'package:istream/sources/models/Source.dart';
import 'package:istream/sources/source_manager.dart';

class ExtensionScreen extends StatefulWidget {
  const ExtensionScreen({Key? key}) : super(key: key);

  @override
  State<ExtensionScreen> createState() => _ExtensionScreenState();
}

class _ExtensionScreenState extends State<ExtensionScreen> {
  ScrollController controller = ScrollController();
  List<Source> sources = Get.put(SourceManager()).availableSources;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Extension'),
      ),
      body: Scrollbar(
        child: ListView.builder(
          controller: controller,
          itemBuilder: (context, index) {
            return ListTile(
                title: Text(sources[index].name),
                onTap: () {
                  Get.to(SourceScreen(sourceId: sources[index].id));
                });
          },
          itemCount: sources.length,
        ),
      ),
    );
  }
}

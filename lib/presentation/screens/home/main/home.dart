import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:istream/presentation/screens/home/extension/extension_screen.dart';

class HomeScreens extends StatefulWidget {
  const HomeScreens({Key? key}) : super(key: key);

  @override
  State<HomeScreens> createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions(BuildContext context) {
    return <Widget>[
      Text(AppLocalizations.of(context)!.library),
      ExtensionScreen(),
      Text(AppLocalizations.of(context)!.setting),
    ];
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions(context).elementAt(_selectedIndex),
      ),
      bottomNavigationBar: NavigationBar(
        destinations: <NavigationDestination>[
          NavigationDestination(
            icon: const Icon(Icons.book),
            label: AppLocalizations.of(context)!.library,
          ),
          NavigationDestination(
            icon: const Icon(Icons.explore),
            label: AppLocalizations.of(context)!.explore,
          ),
          NavigationDestination(
            icon: const Icon(Icons.settings),
            label: AppLocalizations.of(context)!.setting,
          ),
        ],
        onDestinationSelected: _onItemTapped,
        selectedIndex: _selectedIndex,
      ),
    );
  }
}

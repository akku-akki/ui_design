import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';

import './widgets/export.dart';
import './screens/export_screen.dart';
import './utils/export_utils.dart';

import 'package:device_preview/device_preview.dart';

void main() => runApp(
      DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => MyApp(), // Wrap your app
      ),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: CashInEntry(),
    );
  }
}

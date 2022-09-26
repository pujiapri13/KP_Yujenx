import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class TabelGeografi extends StatefulWidget {
  const TabelGeografi({super.key});

  @override
  State<TabelGeografi> createState() => _TabelGeografiState();
}

class _TabelGeografiState extends State<TabelGeografi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tabel Geografi'),
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Center(
            child: Icon(
              BackIcons.circle_arrow,
              size: 40,
            ),
          ),
        ),
      ),
      body: const WebView(
        initialUrl: "https://cilacapkab.bps.go.id/subject/153/geografi-geography.html#subjekViewTab3",
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
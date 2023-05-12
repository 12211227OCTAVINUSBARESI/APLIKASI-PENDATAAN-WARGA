import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pendataanwarga/Dashboard/Pengaturan_panel.dart';
import 'package:pendataanwarga/Dashboard/beranda_panel.dart';
import 'package:pendataanwarga/Dashboard/berita_panel.dart';
import 'package:pendataanwarga/providers/Dashboard_provider.dart';
import 'package:pendataanwarga/views/beranda_panel.dart';
import 'package:pendataanwarga/view/berita_panel.dart';
import 'package:pendataanwarga/view/pengaturan_panel.dart';
import 'package:provider/provider.dart';

class Dashboardview extends StatelessWidget {
  const Dashboardview({super.key});

  @override
  Widget build(BuildContext context) {
    final penels = [
      BerandaPanel(),
      BeritaPanel(),
      pengaturanpanel(),
    ];

    return Consumer<Dashboardprovider>(
      builder: (context, prov, W) {
        return Scaffold(
          bottomNavigationBar: BottomNavigationBar(
              onTap: (value) {
                prov.ubahTab(value);
                print("tab $value");
              },
              currentIndex: prov.tabaktif,
              items: [
                BottomNavigationBarItem(
                    icon: Icon(FontAwesomeIcons.house), label: 'Beranda'),
                BottomNavigationBarItem(
                    icon: Icon(FontAwesomeIcons.newspaper), label: 'Berita'),
                BottomNavigationBarItem(
                    icon: Icon(FontAwesomeIcons.wrench), label: 'Pengaturan')
              ]),
          body: penels[prov.tabaktif],
        );
      }
    );
  }
}

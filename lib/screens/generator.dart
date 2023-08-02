import 'dart:io';

import 'package:csv/csv.dart';
import 'package:discountandcodes/core/dummy.dart';
import 'package:flutter/cupertino.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

class Generateor extends StatefulWidget {
  const Generateor({super.key});

  @override
  State<Generateor> createState() => _GenerateorState();
}

class _GenerateorState extends State<Generateor> {
  @override
  Widget build(BuildContext context) {
    genrate();
    // ListToCsvConverter.
    return const Placeholder();
  }
  Future<void> genrate() async {
    List<List<dynamic>> rows = [];
    for (int i = 0; i < DummyData.stores.length; i++) {
      List<dynamic> row = [];
      row.add(DummyData.stores[i].storeName);
      row.add(DummyData.stores[i].category);
      row.add(DummyData.stores[i].affiliateUrl);
      row.add(DummyData.stores[i].url);
      row.add(DummyData.stores[i].longDescription);
      row.add(DummyData.stores[i].shortDescription);
      row.add(DummyData.stores[i].image);
      row.add(DummyData.stores[i].totalCoupons);

      rows.add(row);

      print(rows);
      // }
      Permission.manageExternalStorage.request();
      if (true) {
        Directory? directory = await getExternalStorageDirectory();
        String? dir = directory?.absolute.path;
        String file = "$dir";
        File f = File("${file}filename.csv");
        String csv = const ListToCsvConverter().convert(rows);
        f.writeAsString(csv);
      }
    }
  }
}
Future<void> genrateCupons() async {
  List<List<dynamic>> rows = [];
  for (int i = 0; i < DummyData.coupons.length; i++) {
    List<dynamic> row = [];
    row.add('');
    row.add(DummyData.coupons[i].storeName);
    row.add(DummyData.coupons[i].description);
    row.add(DummyData.coupons[i].image);
    row.add(DummyData.coupons[i].code);


    rows.add(row);

    print(rows);
    // }
    Permission.manageExternalStorage.request();
    if (true) {
      Directory? directory = await getExternalStorageDirectory();
      String? dir = directory?.absolute.path;
      String file = "$dir";
      File f = File("${file}filename.csv");
      String csv = const ListToCsvConverter().convert(rows);
      f.writeAsString(csv);
    }
  }
}

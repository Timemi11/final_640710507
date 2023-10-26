import 'package:final_640710507/model/bangkok.dart';
import 'package:final_640710507/reposities/bangkok_repo.dart';
import 'package:final_640710507/screen/home/bagkok_list.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<Bangkok>? _bangkok;

  @override
  void initState() {
    super.initState();
    getWhether();
  }

  getWhether() async {
    await Future.delayed(Duration(seconds: 2));
    try {
      List<Bangkok> bg = await Bangkok_repo().getBangkok();
      print(bg);
      setState(() {
        _bangkok = bg;
      });
    } catch (e) {}
  }

  @override
  Widget build(BuildContext context) {
    buildList() => ListView.builder(
        itemCount: _bangkok!.length,
        itemBuilder: (ctx, i) {
          Bangkok bangkok = _bangkok![i];
          return Bangkok_List(
            bangkok: bangkok,
          );
        });

    return Scaffold(
      body: buildList(),
    );
  }
}

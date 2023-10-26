import 'dart:convert';

import 'package:final_640710507/model/bangkok.dart';

import '../service/api_caller.dart';

class Bangkok_repo {
  Future<List<Bangkok>> getBangkok() async {
    try {
      var result = await ApiCaller().get('bangkok');

      List list = jsonDecode(result);

      List<Bangkok> bglist =
          list.map<Bangkok>((item) => Bangkok.fromJson(item)).toList();
      return bglist;
    } catch (e) {
      // TODO:
      rethrow;
    }
  }
}

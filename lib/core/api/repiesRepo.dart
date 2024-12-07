import 'package:recipes/core/api/dio_consumer.dart';

import 'package:recipes/core/models/recpiesModel.dart';

class Recpiesrepo {
  final  DioConsumer dioConsumer;

  Recpiesrepo({required this.dioConsumer});

  Future<List<Recpies>> getRecpies(String categories) async {
    final recpies = await dioConsumer.get('search.php?f=$categories');
    List<Recpies> data = [];
    
      for (var recpie in recpies) {
        data.add(Recpies.fromJson(recpie));
      }
      return data;
  
  }
}

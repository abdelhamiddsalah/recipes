import 'package:recipes/core/api/webService.dart';
import 'package:recipes/core/models/recpiesModel.dart';

class Recpiesrepo {
  final Webservice webservice;

  Recpiesrepo({required this.webservice});

  Future<List<Recpies>> getRecpies(String sortBy) async {
    final recpies = await webservice.getRepices(sortBy);
    List<Recpies> data = [];
    
      for (var recpie in recpies) {
        data.add(Recpies.fromJson(recpie));
      }
      return data;
  
  }
}

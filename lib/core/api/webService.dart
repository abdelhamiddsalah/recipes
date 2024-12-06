import 'package:recipes/core/api/dio_consumer.dart';

class Webservice {
  final DioConsumer dioConsumer;
  Webservice(
    this.dioConsumer,
  );

  Future<dynamic> getRepices(String categories) async {
    try {
      final response = await dioConsumer.get('search.php?f=$categories');
      
        return response.data['meals'];
      
    } on Exception catch (e) {
      print(e.toString());
    }
  }
}

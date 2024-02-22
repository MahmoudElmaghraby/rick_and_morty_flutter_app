import 'package:dio/dio.dart';
import 'package:rick_and_morty/constants/strings.dart';

class CharactersWebServices {
  late Dio dio;

  CharactersWebServices() {
    BaseOptions options = BaseOptions(
      baseUrl: BASE_URL,
      receiveDataWhenStatusError: true,
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
    );

    dio = Dio(options);
  }

  Future<List<dynamic>> getAllCharacters() async {
   try{
     Response response = await dio.get('character');
     print(response.data.toString());
     return response.data;
   }catch(e){
     print(e.toString());
     return [];
   }
  }
}

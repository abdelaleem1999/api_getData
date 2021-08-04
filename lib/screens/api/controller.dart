import 'package:api_task1/screens/api/modul.dart';
import 'package:dio/dio.dart';

class Controller {
  Dio dio = Dio();
  Future <List <Modul> >  fetch() async{
    final respose =await dio.get("https://www.breakingbadapi.com/api/characters");
    final  collect =respose.data as List;
    List<Modul> modul =[];
    collect.forEach((element) {
      Modul modul2 = Modul.fromjson(element);
      modul.add(modul2);

    });
    return modul;
  }

    }


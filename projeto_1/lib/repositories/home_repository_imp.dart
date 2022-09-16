import 'package:dio/dio.dart';
import 'package:projeto_1/models/post_model.dart';
import 'package:projeto_1/repositories/home_repository.dart';

class HomeRepositoryImp implements HomeRepository {
  @override
  Future<List<PostModel>> getList() async{
    try {
      var response = await Dio().get('https://jsonplaceholder.typicode.com/posts');
      return (response.data as List).map((item) => PostModel.fromJson(item)).toList();
    } catch (e) {
      print(e);
    }
    return [];
  }

}
import 'package:flutter_auto_route/common/network/BaseApiServices.dart';
import 'package:flutter_auto_route/common/network/NetworkApiService.dart';
import '../models/movies_model.dart';
import '../common/network/app_url.dart';

class HomeRepository {
  final BaseApiServices _apiServices = NetworkApiService();

  Future<MovieListModel> fetchMoviesList() async {
    try {
      dynamic response = await _apiServices.getGetApiResponse(
        AppUrl.moviesListEndPoint,
      );
      return response = MovieListModel.fromJson(response);
    } catch (e) {
      throw e;
    }
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_auto_route/common/response/api_response.dart';
import 'package:flutter_auto_route/models/movies_model.dart';
import 'package:flutter_auto_route/repositories/home_repository.dart';

class HomeController with ChangeNotifier {
  final _myRepo = HomeRepository();

  ApiResponse<MovieListModel> moviesList = ApiResponse.loading();

  setMoviesList(ApiResponse<MovieListModel> response) {
    moviesList = response;
    notifyListeners();
  }

  Future<void> fetchMoviesListApi() async {
    setMoviesList(ApiResponse.loading());

    _myRepo
        .fetchMoviesList()
        .then((value) {
          setMoviesList(ApiResponse.completed(value));
        })
        .onError((error, stackTrace) {
          setMoviesList(ApiResponse.error(error.toString()));
        });
  }
}

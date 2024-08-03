import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo.dart';
import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/utils/api_service.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;
    HomeRepoImpl({required this.apiService});

  @override
  Future<Either<Failures, List<BookModel>>> featchNewsetBooks() async {
    try {
      var data = await apiService.get(
          endPoint:
              'volumes?Filtering=free-ebooks&q=Subject:programming&Sorting=newest');

      List<BookModel> books = [];

      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }

      return right(books);
    } catch (e) {
      return left(ServerFailuer(errMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failures, List<BookModel>>> featchFeaturedBooks() async {
     try {
      var data = await apiService.get(
          endPoint:
              'volumes?Filtering=free-ebooks&q=Subject:programming');

      List<BookModel> books = [];

      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }

      return right(books);
    } catch (e) {
      return left(ServerFailuer(errMessage: e.toString()));
    }
  }
}

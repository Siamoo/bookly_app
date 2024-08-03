import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'top_books_state.dart';

class TopBooksCubit extends Cubit<TopBooksState> {
  TopBooksCubit(this.homeRepo) : super(TopBooksInitial());

  final HomeRepo homeRepo;

  Future<void> featchFeaturedBooks() async {
    emit(TopBooksLoading());
    var result = await homeRepo.featchFeaturedBooks();
    result.fold((failures) {
      emit(TopBooksFailuer(failures.errMessage));
    }, (books) {
      emit(TopBooksSuccess(books));
    });
  }
}

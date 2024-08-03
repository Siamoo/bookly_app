import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'botttom_books_state.dart';

class BotttomBooksCubit extends Cubit<BotttomBooksState> {
  BotttomBooksCubit(this.homeRepo) : super(BotttomBooksInitial());

  final HomeRepo homeRepo;

  Future<void> featchNewsetBooks() async {
    emit(BotttomBooksLoading());
    var result = await homeRepo.featchNewsetBooks();
    result.fold((failures) {
      emit(BotttomBooksFailuer(failures.errMessage));
    }, (books) {
      emit(BotttomBooksSuccess(books));
    });
  }
}

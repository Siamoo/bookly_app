part of 'botttom_books_cubit.dart';

sealed class BotttomBooksState extends Equatable {
  const BotttomBooksState();

  @override
  List<Object> get props => [];
}

final class BotttomBooksInitial extends BotttomBooksState {}
final class BotttomBooksLoading extends BotttomBooksState {}
final class BotttomBooksSuccess extends BotttomBooksState {
  final List<BookModel> books;

 const BotttomBooksSuccess(this.books);
}
final class BotttomBooksFailuer extends BotttomBooksState {
  final String errMessage;

 const BotttomBooksFailuer(this.errMessage);
}

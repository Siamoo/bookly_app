part of 'top_books_cubit.dart';

sealed class TopBooksState extends Equatable {
  const TopBooksState();

  @override
  List<Object> get props => [];
}

final class TopBooksInitial extends TopBooksState {}
final class TopBooksLoading extends TopBooksState {}
final class TopBooksSuccess extends TopBooksState {
 final List<BookModel> books;

  const TopBooksSuccess(this.books);
}
final class TopBooksFailuer extends TopBooksState {
  final String errMessage;

 const TopBooksFailuer(this.errMessage);
}

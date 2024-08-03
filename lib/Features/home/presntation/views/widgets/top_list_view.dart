import 'package:bookly_app/Features/home/presntation/manger/top_books_cubit/top_books_cubit.dart';
import 'package:bookly_app/Features/home/presntation/views/widgets/top_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TopListView extends StatelessWidget {
  const TopListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TopBooksCubit, TopBooksState>(
      builder: (context, state) {
        if (state is TopBooksSuccess) {
                  return SizedBox(
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return const Padding(
                padding: EdgeInsets.only(right: 16),
                child: TopListViewItem(),
              );
            },
          ),
        );
        }else if(state is TopBooksFailuer){
          print(state.errMessage);
          return Text(state.errMessage);

        }else {
          return Text('Louding');
        }
      },
    );
  }
}

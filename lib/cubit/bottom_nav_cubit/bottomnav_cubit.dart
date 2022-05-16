import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_bookstore/cubit/bottom_nav_cubit/bottomnav_state.dart';
import 'package:online_bookstore/views/books/books_page.dart';
import 'package:online_bookstore/views/home/home_page.dart';
import 'package:online_bookstore/views/saved/saved_page.dart';
import 'package:online_bookstore/views/settings/settings_page.dart';

class BottomNavCubit extends Cubit<BottomNavState> {
  BottomNavCubit() : super(BottomNavInitial());

  int pageIndex = 0;
  List pages = [
    HomePage(),
    BooksPage(),
    SavedPage(),
    SettingsPage(),
  ];

  changePage(v) {
    pageIndex = v;
    emit(ChangePageState());
  }
}

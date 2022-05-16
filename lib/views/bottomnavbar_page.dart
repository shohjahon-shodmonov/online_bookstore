import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_bookstore/core/base_view/base_view.dart';
import 'package:online_bookstore/core/constants/size_config.dart';
import 'package:online_bookstore/cubit/bottom_nav_cubit/bottomnav_cubit.dart';
import 'package:online_bookstore/cubit/bottom_nav_cubit/bottomnav_state.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BottomNavCubit(),
      child: BlocConsumer<BottomNavCubit, BottomNavState>(
        listener: (context, state) {},
        builder: ((context, state) {
          return bottomNavScaffold();
        }),
      ),
    );
  }

  BaseView bottomNavScaffold() {
    return BaseView(
      viewModal: BottomNavBar,
      onPageBuilder: (context, widget) {
        return Scaffold(
          body: context
              .watch<BottomNavCubit>()
              .pages[context.watch<BottomNavCubit>().pageIndex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: 0,
            selectedItemColor: Colors.green,
            items: [
              BottomNavigationBarItem(
                label: "",
                icon: SvgPicture.asset(
                  'assets/icons/home.svg',
                  height: getProportionScreenHeight(20),
                  width: getProportionScreenWidth(20),
                  color: context.watch<BottomNavCubit>().pageIndex == 0
                      ? Colors.red
                      : Colors.black38,
                ),
              ),
              BottomNavigationBarItem(
                label: "",
                icon: SvgPicture.asset(
                  'assets/icons/book.svg',
                  height: getProportionScreenHeight(20),
                  width: getProportionScreenWidth(20),
                  color: context.watch<BottomNavCubit>().pageIndex == 1
                      ? Colors.red
                      : Colors.black38,
                ),
              ),
              BottomNavigationBarItem(
                label: "",
                icon: SvgPicture.asset(
                  'assets/icons/saved.svg',
                  height: getProportionScreenHeight(20),
                  width: getProportionScreenWidth(20),
                  color: context.watch<BottomNavCubit>().pageIndex == 2
                      ? Colors.red
                      : Colors.black38,
                ),
              ),
              BottomNavigationBarItem(
                label: "",
                icon: SvgPicture.asset(
                  'assets/icons/settings.svg',
                  height: getProportionScreenHeight(20),
                  width: getProportionScreenWidth(20),
                  color: context.watch<BottomNavCubit>().pageIndex == 3
                      ? Colors.red
                      : Colors.black38,
                ),
              ),
            ],
            onTap: (v) {
              context.read<BottomNavCubit>().changePage(v);
            },
          ),
        );
      },
    );
  }
}

import 'package:anime_app/features/base/cubit/base_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BaseView extends StatelessWidget {
  const BaseView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      lazy: false,
      create: (context) => BaseCubit(),
      child: Builder(builder: (context) {
        final cubit = BaseCubit.of(context);
        return Scaffold(
          body: BlocBuilder<BaseCubit, BaseState>(
            builder: (context, state) {
              return cubit.page[cubit.bottomNvaIndex];
            },
          ),
          bottomNavigationBar: BlocBuilder<BaseCubit, BaseState>(
            builder: (context, state) {
              return Theme(
                data: ThemeData(splashColor: Theme.of(context).backgroundColor),
                child: BottomNavigationBar(
                  onTap: (value) => cubit.bottomNAvController(value),
                  currentIndex: cubit.bottomNvaIndex,
                  showSelectedLabels: false,
                  showUnselectedLabels: false,
                  backgroundColor: Theme.of(context).backgroundColor,
                  type: BottomNavigationBarType.fixed,
                  selectedItemColor: Colors.white,
                  unselectedItemColor: Colors.grey,
                  items: const [
                    BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.search), label: ''),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.person), label: ''),
                  ],
                ),
              );
            },
          ),
        );
      }),
    );
  }
}

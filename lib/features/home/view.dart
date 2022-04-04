import 'package:anime_app/const/responsive/responsive.dart';
import 'package:anime_app/widget/poster_card.dart';
import 'package:flutter/material.dart';
part 'units/upcoming_app_bar.dart';
part 'units/recomendation.dart';
part 'units/top_rated.dart';
part 'units/news.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          _UpcomingAppBar(),
          _Recomendation(),
          _TopRated(),
          _News(),
        ],
      ),
      // bottomNavigationBar: ,
    );
  }
}

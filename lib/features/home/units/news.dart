part of '../view.dart';

class _News extends StatelessWidget {
  const _News({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: const Text('Upcoming Anime'),
      expandedHeight: sizeFromHeight(context, 3),
      flexibleSpace: FlexibleSpaceBar(
        // titlePadding: EdgeInsets.all(20),
        // title: Text(
        //   'Naruto | 9-1-2022',
        //   style: TextStyle(fontSize: 10),
        // ),
        background: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(40)),
          child: PageView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 4,
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  Image.network(
                    "https://i.pinimg.com/564x/6a/e6/e1/6ae6e18f808862a631a513b00b65d2c3.jpg",
                    width: sizeFromWidth(context, 1),
                    // height: sizeFromHeight(context, 3),
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    left: 50,
                    bottom: 20,
                    child: Text(
                      'Anime datata',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

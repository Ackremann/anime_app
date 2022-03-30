part of '../view.dart';

class _Recomendation extends StatelessWidget {
  const _Recomendation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10, left: 20, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Recomendation'),
                TextButton.icon(
                  onPressed: () {},
                  label: const Icon(Icons.arrow_right_outlined),
                  icon: const Text('View all'),
                ),
              ],
            ),
          ),
          SizedBox(
            height: sizeFromHeight(context, 3),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context, index) {
                return const PosterCard(
                  text: 'Naruto',
                  imageUrl:
                      "https://i.pinimg.com/564x/6a/e6/e1/6ae6e18f808862a631a513b00b65d2c3.jpg",
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

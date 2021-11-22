part of '../widgets.dart';

class CustomNavigationBottomItems extends StatelessWidget {
  final int index;
  final String imageUrl;
  const CustomNavigationBottomItems(
      {Key? key, required this.imageUrl, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<PageCubit>().setPage(index);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(),
          SizedBox(),
          Image.asset(
            imageUrl,
            width: 24,
            height: 24,
            color: context.read<PageCubit>().state == index
                ? kSecondaryColor
                : kGreyColor,
          ),
          Container(
            width: 5,
            height: 5,
            decoration: BoxDecoration(
                color: context.read<PageCubit>().state == index
                    ? kSecondaryColor
                    : kTransparentColor,
                borderRadius: BorderRadius.circular(5)),
          ),
          SizedBox(height: 1)
        ],
      ),
    );
  }
}

part of '../../../widgets/widgets.dart';

class CustomCourseDetailTabItem extends StatelessWidget {
  final int index;
  final String tabItem;
  const CustomCourseDetailTabItem(
      {Key? key, required this.index, required this.tabItem})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<PageCubit>().setPage(index);
      },
      child: Column(
        children: [
          Text(
            tabItem,
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: medium,
              color: context.read<PageCubit>().state == index
                  ? kBlackColor
                  : kGreyColor,
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Container(
            height: 3,
            width: 40,
            decoration: BoxDecoration(
                color: context.read<PageCubit>().state == index
                    ? kSecondaryColor
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(20)),
          )
        ],
      ),
    );
  }
}

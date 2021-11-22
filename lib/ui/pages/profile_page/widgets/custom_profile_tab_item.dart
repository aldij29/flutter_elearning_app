part of '../../../widgets/widgets.dart';

class CustomProfileTabItem extends StatelessWidget {
  final int indexTab;
  final String tabItem;
  const CustomProfileTabItem(
      {Key? key, required this.indexTab, required this.tabItem})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<TabCubit>().setTab(indexTab);
      },
      child: Column(
        children: [
          Text(
            tabItem,
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: medium,
              color: context.read<TabCubit>().state == indexTab
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
                color: context.read<TabCubit>().state == indexTab
                    ? kPrimaryColor
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(20)),
          )
        ],
      ),
    );
  }
}

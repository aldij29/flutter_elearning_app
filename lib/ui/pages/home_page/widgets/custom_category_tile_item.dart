part of '../../../widgets/widgets.dart';

class CustomCategoryTileItem extends StatelessWidget {
  final String categoryItem;
  const CustomCategoryTileItem({ Key? key, required this.categoryItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
                  margin: EdgeInsets.only(right: 6),
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  decoration: BoxDecoration(
                    color: kRealWhiteColor,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1)),
                  child: Text(
                    categoryItem,
                    style: blackTextStyle.copyWith(fontWeight: semiBold, fontSize: 16),
                  ),
                );
  }
}
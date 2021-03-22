import 'export.dart';
import '../utils/export_utils.dart';

class CategorieListing extends StatelessWidget {
  const CategorieListing({
    Key key,
    this.title,
    this.subTitle,
  }) : super(key: key);

  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context).textTheme;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: Spacing.size12W,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: theme.subtitle1.copyWith(color: Colors.black),
              ),
              Text(
                "View all",
                style: theme.button.copyWith(color: Colors.cyan),
              ),
            ],
          ),
          Text(
            subTitle,
            style: theme.caption,
          ),
          SizedBox(
            height: Spacing.size6H,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.2,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: 8,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: Spacing.size6W),
                  width: CustomSize.customSize.widthFactor * 75,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        flex: 1,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(Spacing.size4W),
                              border: Border.all(color: Colors.grey[400])),
                          // ** Place NetworImage ** //
                          // child: Place Network Image ,
                        ),
                      ),
                      SizedBox(
                        height: Spacing.size12H,
                      ),
                      Flexible(
                        child: Text(
                          "MiniStop MiniStop MiniStop",
                          style: theme.caption,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          maxLines: 2,
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

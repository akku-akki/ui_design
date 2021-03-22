import 'export.dart';
import '../utils/export_utils.dart';

class CashInMapCard extends StatelessWidget {
  const CashInMapCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: Spacing.size12W,
      ),
      child: GestureDetector(
        // onTap: (){},  //** To add onTap functionality */
        child: Card(
          margin: EdgeInsets.only(bottom: Spacing.size20H),
          elevation: 2,
          child: SizedBox(
            height: CustomSize.customSize.heightFactor * 70,
            child: Stack(
              alignment: Alignment.center,
              children: [
                // Placeholder(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("View nearby partners"),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

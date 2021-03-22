import 'export.dart';
import '../utils/export_utils.dart';

class LinkedAccounts extends StatelessWidget {
  const LinkedAccounts({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context).textTheme;
    return Padding(
      padding: EdgeInsets.only(
          left: Spacing.size16W, right: Spacing.size16W, top: Spacing.size16W),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "My Linked Accounts",
                style: theme.subtitle1.copyWith(fontWeight: FontWeight.w600),
              ),
              GestureDetector(
                  // onTap: ,  // ** Add functionality **//
                  child: Text(
                "Manage",
                style: theme.button.copyWith(color: Colors.cyan),
              )),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: Spacing.size8W),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Spacing.size4W),
              color: Colors.grey[300],
            ),
            padding: EdgeInsets.only(
                top: Spacing.size12H,
                left: Spacing.size12W,
                bottom: Spacing.size20H),
            child: Row(
              children: [
                CircleAvatar(
                  child: Icon(Icons.account_circle),
                ),
                SizedBox(
                  width: Spacing.size12W,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Link accounts for easy access",
                      style: theme.subtitle2,
                    ),
                    Text(
                      "Cash in easily with your linked accounts",
                      style: theme.caption,
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

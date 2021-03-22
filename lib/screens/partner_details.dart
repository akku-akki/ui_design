
import '../widgets/export.dart';
import '../utils/export_utils.dart';

class PartnerDetails extends StatefulWidget {
  @override
  _PartnerDetailsState createState() => _PartnerDetailsState();
}

class _PartnerDetailsState extends State<PartnerDetails> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {},
        ),
      ),
      body: ListView(
        padding: EdgeInsets.only(top: Spacing.size16H),
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: Spacing.size16W, vertical: Spacing.size12H),
            child: Row(
              children: [
                Container(
                  height: CustomSize.customSize.widthFactor * 65,
                  width: CustomSize.customSize.widthFactor * 65,
                  padding: EdgeInsets.all(Spacing.size6W),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Spacing.size8W),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: GestureDetector(
                      onTap: () {
                       
                      },
                      child: Placeholder()),
                ),
                SizedBox(
                  width: Spacing.size16W,
                ),
                Text(
                  "7-Eleven",
                  style: theme.subtitle1.copyWith(fontWeight: FontWeight.w600),
                )
              ],
            ),
          ),
          Map(),
          Padding(
            padding: EdgeInsets.all(
              Spacing.size6W,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "How to Cash In",
                  style: theme.headline6,
                ),
                Text(
                  "At any branch of these official partners",
                  style: theme.subtitle1.copyWith(fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          StepRow(
            icon: Icons.business,
            title: "Step 1",
            desc: "Generate code via CLIQQ app or CLIOO kiosk.",
          ),
          StepRow(
            icon: Icons.business,
            title: "Step 2",
            desc:
                "Inform cashier that you would like to Cash-in your GCash wallet.",
          ),
          StepRow(
            icon: Icons.business,
            title: "Step 3",
            desc:
                "Cashier to confirm , collect payment and print recepit. Wait for a text confirmation upon successfull Cash-in before leaving the store",
          ),
          const SizedBox(
            height: 40,
          )
        ],
      ),
    );
  }
}

// class _StackUp extends StatelessWidget {
//   const _StackUp({
//     Key key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Positioned(
//         bottom: Spacing.size8H,
//         right: Spacing.size8H,
//         child: GestureDetector(
//           onTap: () {},
//           child: Container(
//             height: CustomSize.customSize.widthFactor * 45,
//             width: CustomSize.customSize.widthFactor * 45,
//             child: Center(
//               child: Icon(
//                 Icons.arrow_upward,
//                 color: Colors.white,
//               ),
//             ),
//             decoration: BoxDecoration(
//                 color: Colors.black54,
//                 borderRadius: BorderRadius.circular(Spacing.size6W)),
//           ),
//         ));
//   }
// }

class StepRow extends StatelessWidget {
  const StepRow({
    Key key,
    this.icon,
    this.title,
    this.desc,
  }) : super(key: key);

  final IconData icon;
  final String title;
  final String desc;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context).textTheme;
    return Padding(
      padding: EdgeInsets.all(Spacing.size16W),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Flexible(flex: 3, child: CircleAvatar(child: Icon(icon))),
          Spacer(),
          Flexible(
            flex: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: theme.subtitle2,
                ),
                Text(
                  desc,
                  style: theme.bodyText2.copyWith(color: Colors.grey),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

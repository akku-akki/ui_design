import 'export.dart';
import '../utils/export_utils.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: Spacing.size12H,
      margin: EdgeInsets.symmetric(vertical: Spacing.size12H),
      color: Colors.grey[300],
    );
  }
}

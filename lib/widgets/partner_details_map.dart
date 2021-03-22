import 'package:ui_design/qrcodeandbarcode/qrCodeAndBarCodeTutorial.dart';

import 'export.dart';
import '../utils/export_utils.dart';

class Map extends StatelessWidget {
  const Map({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.35,
          color: Colors.lightBlue,
        ),
        _RowMapButtons(),
        _ColumnMapButtons(),
        Positioned(
          bottom: Spacing.size16H,
          child: RaisedButton(
            padding: EdgeInsets.symmetric(
                horizontal: Spacing.size24W, vertical: Spacing.size8H),
            onPressed: () {
               Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    QrCodeAndBarCodeTutorial()));
            },
            color: Colors.blue,
            shape: StadiumBorder(),
            child: Text(
              "View nearby branches  >  ",
              style: Theme.of(context)
                  .textTheme
                  .button
                  .copyWith(color: Colors.white),
            ),
          ),
        )
      ],
    );
  }
}

class _ColumnMapButtons extends StatelessWidget {
  const _ColumnMapButtons({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: Spacing.size6W,
      top: Spacing.size8H,
      child: Column(
        children: [
          MapButton(

              // callback: ,
              icon: Icons.add),
          MapButton(
            // callback:  ,
            icon: Icons.remove,
          ),
        ],
      ),
    );
  }
}

class _RowMapButtons extends StatelessWidget {
  const _RowMapButtons({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: Spacing.size6W,
      top: Spacing.size8H,
      child: Row(
        children: [
          MapButton(
            color: Colors.grey,
            // callback: ,
            icon: Icons.navigation,
          ),
          MapButton(
            color: Colors.grey,

            // callback:  ,
            icon: Icons.fullscreen,
          ),
        ],
      ),
    );
  }
}

class MapButton extends StatelessWidget {
  const MapButton({
    Key key,
    this.icon,
    this.callback,
    this.color,
  }) : super(key: key);

  final IconData icon;
  final VoidCallback callback;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback,
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.all(Spacing.size8W),
        child: Icon(
          icon,
          color: color,
        ),
      ),
    );
  }
}

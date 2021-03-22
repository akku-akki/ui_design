import '../widgets/export.dart';
import 'export_screen.dart';
import '../utils/export_utils.dart';

class CashInEntry extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CustomSize.initialize(
      MediaQuery.of(context).size.height,
      MediaQuery.of(context).size.width,
    );
    return CashIn();
  }
}

class CashIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cash In"),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          // Adding on Pressed Functionality
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),

            ///  ADD ON PRESSED
            onPressed: () {
              // NOTE THIS IS FOR DEMO THIS SHOULD BE REMOVED
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PartnerDetails()));
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          LinkedAccounts(),
          const CustomDivider(),
          CashInMapCard(),
          CategorieListing(
            title: "Over the Counter",
            subTitle: "At any branch of these official partners",
          ),
          CustomDivider(),
          CategorieListing(
            title: "Online Banks",
            subTitle: "Hassle-free online anytime ",
          ),
          CustomDivider(),
          CategorieListing(
            title: "Global Partners and Remittance",
            subTitle: "Receive money from anywhere in the world",
          ),
        ],
      ),
    );
  }
}

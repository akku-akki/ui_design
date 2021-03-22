import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QrCodeAndBarCodeTutorial extends StatefulWidget {
  @override
  _QrCodeAndBarCodeTutorialState createState() =>
      _QrCodeAndBarCodeTutorialState();
}

class _QrCodeAndBarCodeTutorialState extends State<QrCodeAndBarCodeTutorial> {
  int _height;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          //QR code text
          Text(
            "QR Code And Barcode Tutorial",
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(
              height: _height ?? MediaQuery.of(context).size.height / 1.2,
              //carousel slider start
              child: Carousel(
                images: [
                  screen1(), //call screen1
                  screen2(), //call screen2
                ],
                dotSize: 5.0,
                dotSpacing: 25.0,
                dotColor: Colors.blue,
                boxFit: BoxFit.cover,
                animationCurve: Curves.fastOutSlowIn,
                indicatorBgPadding: 6.0,
                dotBgColor: Colors.blue[200],
                borderRadius: false,
                autoplay: false,
                dotIncreasedColor: Colors.black,
              )),
          //carousel slider end
          Expanded(child: Container()),
          Padding(
            padding: const EdgeInsets.only(bottom: 15.0),
            child: Text(
              "Got it!",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          )
        ],
      ),
    );
  }

//bar code tutorial screen 1 preview open
  screen1() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Icon(
              Icons.add_chart,
              color: Colors.white,
              size: 75,
            ),
          ),
          Text(
            "Step 1",
            style: TextStyle(
                color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25.0, left: 15, right: 25),
            child: Text(
              "Make sure to have available balance in your GCash Account by adding money using any of our Cash in options.",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Icon(
              Icons.storefront_outlined,
              color: Colors.white,
              size: 75,
            ),
          ),
          Text(
            "Step 2",
            style: TextStyle(
                color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0, left: 25, right: 25),
            child: Text(
              "Shop in any of our partner merchant that accepts GCash paymnets using a OQ Code/ Barcode scanner terminal.",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Icon(
              Icons.border_all_rounded,
              color: Colors.white,
              size: 75,
            ),
          ),
          Text(
            "Step 3",
            style: TextStyle(
                color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0, left: 25, right: 25),
            child: Text(
              "Access the GCash app to generate the QR/Barcode. This unique barcode will be scanned by the cashier to process the payment.",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
  //bar code tutorial screen 1 preview close

  //bar code tutorial screen 2 preview open
  screen2() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Icon(
              Icons.bar_chart_rounded,
              color: Colors.white,
              size: 75,
            ),
          ),
          Text(
            "Step 3b",
            style: TextStyle(
                color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25.0, left: 15, right: 25),
            child: Text(
              "Present the unique QR/BArcode to the cashier. The amount will be charged when the cashier's terminal successfully reads the QR/Barcode genrated from the app.",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Icon(
              Icons.list_alt,
              color: Colors.white,
              size: 75,
            ),
          ),
          Text(
            "Step 4",
            style: TextStyle(
                color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0, left: 25, right: 25),
            child: Text(
              "Recieve the confirmation of your transaction via SMS. claim your reciept from the cashier and enjoy your purchase!",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
//bar code tutorial screen 2 preview close
}

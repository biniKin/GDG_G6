import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Screen extends StatelessWidget {
  const Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2C3DDB),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              ClipOval(
                child: Image(
                  image: NetworkImage(
                      'https://s3-alpha-sig.figma.com/img/588b/16e9/12de7340129075eaa8006ad96cefb5b2?Expires=1743984000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=YD5pi0EaLtNsLXHC3f~7wBbFuSRCzgWHyy-Mh0Yu6v6T3wLV1VeLZhIXfxmulwyDCeJMUqwrHFEJlyd4tutsoV5i21OmAawMwpLWWjuuNTqrtMPQKpBn2M-cJu3syg5enwb0X55btvJB9Vy7DLUYYFvyzzbzwK9miE2uvfoANYoZFC9T8P-MPvCWz0JghiaJIFPuVkICckkoAxX2MqODbvyDTEdEIkvErRYaNLKnou91oNegFHRcuIgL90rzOY5BAZux060jgltrPxledYslpNdXo1iC8WYc1ayo0kVhBUaAbeqU7dATVXG78F59VhDTF20Ktrsp4IZa5I~vjLvUIQ__'),
                  height: 350,
                  width: 350,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Column(
                children: [
                  Text(
                    "Enjoy",
                    style: GoogleFonts.poppins(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Text(
                    "Your Food",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w900,
                      fontSize: 40,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              SizedBox(
                width: 268,
                height: 66,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Get Started",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

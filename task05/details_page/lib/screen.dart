import 'package:flutter/material.dart';

class Screen extends StatelessWidget {
  const Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF2C3DDB),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 86,
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.rotationZ(0.7854),
                  child: Container(
                    height: 230,
                    width: 230,
                    decoration: BoxDecoration(
                        color: Color(0x565EA8C4).withOpacity(0.1),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white.withOpacity(0.1),
                            blurRadius: 10,
                            blurStyle: BlurStyle.outer,
                          )
                        ]),
                    //transform: Matrix4.rotationZ(0.7),
                  ),
                ),
                Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    bottom: 20,
                    child: Image(
                      image: NetworkImage(
                          'https://s3-alpha-sig.figma.com/img/b1d0/0daa/34c503883ae34fb535339930ae8d46c7?Expires=1743984000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=eINLsRpNgo1bDOxvkgTnTDkqMlM3ZFWQnxZHs3FpSIyPGWutyaMLS077Jw6eX5-RtK~Gcr~au5BXvHogiu-NYMVhUFQpMhjm9epESXI6z7i5vL~OCNmGCBXKaYHytcR3pWz1bhFSmZzW49ZyyNvp74g6NSge6ALKlkuAVCVAdSkKV~c~dFSdBWErUza5zkP9ynyaphprM6cCVwgnOsRf3GLBZsBlIEVxx5UUNiJPJ6NTl6q9VIkZrp3cNV9796ObFUYpPPXCmzBqzX8LAZ4UddjOFOd1HggMIfsONjBP3-jl7GQckFQfEdQoa9bCMUbodP1UxotvtFTEUx7qoqW7fA__'),
                      height: 200,
                      width: 265,
                    ))
              ],
            ),
            Flexible(
              child: Container(
                height: 403,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(70),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 48.0, left: 30, right: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: 40,
                            width: 72,
                            decoration: BoxDecoration(
                                color: Color(0xFF3B45AD),
                                borderRadius: BorderRadius.circular(20)),
                            child: Text(
                              "4.8",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                          Text(
                            "\$20",
                            style: TextStyle(
                                color: Colors.orange[200],
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0, top: 10),
                      child: SizedBox(
                        width: double.infinity,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Beef Burger",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 16),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                  "Big juicy buger with Cheese,Lettuce,Onions, \nTomato and special sauce!"),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Add Ons: ",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 16),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0, right: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Container(
                                height: 72,
                                width: 72,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://s3-alpha-sig.figma.com/img/b736/c2dc/46c1d62c2602103d0c76fc9e021ef615?Expires=1743984000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=TwqkROFF85hxA7-KvCZaJ3NKXzxH9EwzPVIdWZjt0I534BMLoRkPee9MSeQ161tnuXBafVeq2sZsZfbIukObeHk3ZgYMrN3jz2EXPXX9Wy80IkuCWbJ0oYxMY7mdqP3fd-Y92eA8UHw~FL8LTcK2hWiIe-dM5YHayhvGb77qF9cDQGYxlNaaRb-Cz5fjsv7fwaIZdSXs~ZXjFzj-mTnY8y2s6Fj3UN2QwKp2VHh7ZxU~oJxannwwzCEeYt7C9KVoZEbzaI2hvkDFU~sHNntkhDIvBcN-NRxAcO48up3b0pSoikYCgFW5Nig9V~h-oC64Zvo4YyNnGdt20nuv5LZ7Aw__'),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              Positioned(
                                top: 52,
                                right: -13,
                                left: 52,
                                bottom: -13,
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.add,
                                  ),
                                  style: ButtonStyle(
                                      iconColor:
                                          WidgetStatePropertyAll(Colors.white),
                                      iconSize: WidgetStatePropertyAll(18),
                                      backgroundColor: WidgetStatePropertyAll(
                                          Colors.green[900])
                                      //side: WidgetStatePropertyAll(BorderSide())
                                      ),
                                ),
                              )
                            ],
                          ),
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Container(
                                height: 72,
                                width: 72,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        'https://s3-alpha-sig.figma.com/img/8fff/29f7/591e249a84594f6948c5e4eff5449c0e?Expires=1743984000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=H5M2B27LvtUvG25wj-7Etj4dwTQL~ilJG7zO~7gZw-9siH8WAEHd67GzBevw-DC6snZt-eIb5Npuhqe7VqrsrtcaLQfkjzsgOqi7V64TQ8FNf3pGnYt~RQlx8Nc8~vfc0YuDdSU4kUdHn55XUd~TqUOXox1jppBS6h~6d7Cs0zLDh5DwhEKXOgxSSfAZdXPlxGYZb~mt8qadYkrbNrwt6z8PvV1rG2YCcWCodeJsrZGgdAz~1BFFz6Jc0iJbWkXn5o5YpwXegS7-Lx0QBL2GKn6ikhvUYgJB~nE0HvnWuNVEIHBDQc-v5Pe1QAtuaZ2Hh3YGnBkLK2Sb5-M9VQj9TA__'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 52,
                                right: -13,
                                left: 52,
                                bottom: -13,
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.add,
                                  ),
                                  style: ButtonStyle(
                                      iconColor:
                                          WidgetStatePropertyAll(Colors.white),
                                      iconSize: WidgetStatePropertyAll(18),
                                      backgroundColor: WidgetStatePropertyAll(
                                          Colors.green[900])
                                      //side: WidgetStatePropertyAll(BorderSide())
                                      ),
                                ),
                              )
                            ],
                          ),
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Container(
                                height: 72,
                                width: 72,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            'https://s3-alpha-sig.figma.com/img/1f0f/e0af/93738c2187eb7695186826f2389b29d0?Expires=1743984000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=rgJgfo2kibljK5nwePPFRWT59Ur3IRS-RQttmRa4I18JZwJaxs-GKoNKdgvB2jEuNUVUHuhwm3dYKKrXI7WpjoqSCcwR8692uekYmlC2ByzoJMiDlU-oG3HAsXPEDa~TDtPNSztUXpanSXmLjZBCVD42~IfeMnkTmIQxTNpOxOPBhfDtPKjnjMvmi9pnqtTMbFyNLEcYigvN5zghVqQZ~9aNalSMLskBO~1XK736xWFnBBBYmojfaQOiRM5lyPupTHXjPmwkAnwpFJMR8WiyEBjLGa1FHg1HoowNKjdmaM0vVK7-3buOlq4C03mMYABUe2WPmmdxJkM2tEPNRWPR7Q__'),
                                        fit: BoxFit.cover)),
                              ),
                              Positioned(
                                top: 52,
                                right: -13,
                                left: 52,
                                bottom: -13,
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.add,
                                  ),
                                  style: ButtonStyle(
                                      iconColor:
                                          WidgetStatePropertyAll(Colors.white),
                                      iconSize: WidgetStatePropertyAll(18),
                                      backgroundColor: WidgetStatePropertyAll(
                                          Colors.green[900])
                                      //side: WidgetStatePropertyAll(BorderSide())
                                      ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40, right: 40),
                      child: Container(
                        height: 56,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Color(0xFF3B45AD),
                            borderRadius: BorderRadius.circular(20)),
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Add to Cart",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 24),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}

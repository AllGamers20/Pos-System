import 'package:flutter/material.dart';
import 'package:possystem/Constratnt/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Column(children: <Widget>[
        const Padding(
          padding: EdgeInsets.all(10.0),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'Categories',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: textColor,
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton.icon(
                    style: const ButtonStyle(
                      minimumSize: MaterialStatePropertyAll(Size(150, 10)),
                      backgroundColor: MaterialStatePropertyAll(primaryColor),
                      foregroundColor: MaterialStatePropertyAll(textColor),
                    ),
                    onPressed: () {
                      Fluttertoast.showToast(
                        msg: 'Coming Soon!',
                        toastLength: Toast.LENGTH_SHORT,
                        backgroundColor: Colors.grey,
                        textColor: Colors.white,
                        gravity: ToastGravity.BOTTOM,
                        fontSize: 15,
                        timeInSecForIosWeb: 2,
                      );
                    },
                    icon: SvgPicture.asset(
                      'assets/svg/Vegtables.svg',
                      height: 30,
                      color: textColor,
                    ),
                    label: const Text('vegteables'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton.icon(
                    style: const ButtonStyle(
                      minimumSize: MaterialStatePropertyAll(Size(150, 10)),
                      backgroundColor: MaterialStatePropertyAll(primaryColor),
                      foregroundColor: MaterialStatePropertyAll(textColor),
                    ),
                    onPressed: () {
                      Fluttertoast.showToast(
                        msg: 'Coming Soon!',
                        toastLength: Toast.LENGTH_SHORT,
                        backgroundColor: Colors.grey,
                        textColor: Colors.white,
                        gravity: ToastGravity.BOTTOM,
                        fontSize: 15,
                        timeInSecForIosWeb: 2,
                      );
                    },
                    icon: SvgPicture.asset(
                      'assets/svg/Sugars.svg',
                      color: textColor,
                      height: 30,
                    ),
                    label: const Text('Sugars'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton.icon(
                    style: const ButtonStyle(
                      minimumSize: MaterialStatePropertyAll(Size(150, 10)),
                      backgroundColor: MaterialStatePropertyAll(primaryColor),
                      foregroundColor: MaterialStatePropertyAll(textColor),
                    ),
                    onPressed: () {
                      Fluttertoast.showToast(
                        msg: 'Coming Soon!',
                        toastLength: Toast.LENGTH_SHORT,
                        backgroundColor: Colors.grey,
                        textColor: Colors.white,
                        gravity: ToastGravity.BOTTOM,
                        fontSize: 15,
                        timeInSecForIosWeb: 2,
                      );
                    },
                    icon: SvgPicture.asset(
                      'assets/svg/Spices.svg',
                      color: textColor,
                      height: 30,
                    ),
                    label: const Text('spices'),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: const Text('POS SYSTEM'),
                                content: const Text('Menu Coming Sooon'),
                                backgroundColor: primaryColor,
                                actions: [
                                  TextButton(
                                    child: const Text('OK'),
                                    onPressed: () => Navigator.pop(context),
                                  )
                                ],
                              );
                            },
                          );
                        },
                        child: const Text(
                          'See all',
                          style: TextStyle(
                            color: textColor,
                          ),
                        ),
                      ),
                    )),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}

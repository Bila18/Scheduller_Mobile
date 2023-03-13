import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:scheduller_mobile/utils/color_pallete.dart';
import 'package:scheduller_mobile/utils/typography.dart';
import 'package:scheduller_mobile/views/delivery_view.dart';
import 'package:scheduller_mobile/views/periodical_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: ColorPallete.primary,
        actions: [
          Padding(
              padding: const EdgeInsets.only(right: 10),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.account_circle_outlined,
                  size: 40,
                  color: Colors.black,
                ),
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hi, Nabila!',
                style: TypographyRoboto.boldHeading1,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'Apa yang ingin kamu ketahui?',
                style: TypographyRoboto.regularMedium,
              ),
              const SizedBox(
                height: 35,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DeliveryView(),
                        ),
                      );
                    },
                    child: Column(children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: ColorPallete.primary),
                        child: const Center(
                          child: FaIcon(
                            FontAwesomeIcons.truck,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        width: 60,
                        child: Text(
                          'Delivery',
                          textAlign: TextAlign.center,
                          style: TypographyRoboto.regularNormal,
                        ),
                      ),
                    ]),
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PeriodicalServiceView(),
                        ),
                      );
                    },
                    child: Column(children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: ColorPallete.primary),
                        child: const Center(
                          child: FaIcon(
                            FontAwesomeIcons.toolbox,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        width: 60,
                        child: Text(
                          'Periodical Service',
                          textAlign: TextAlign.center,
                          style: TypographyRoboto.regularNormal,
                        ),
                      ),
                    ]),
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  InkWell(
                    child: Column(children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: ColorPallete.primary),
                        child: const Center(
                          child: FaIcon(
                            FontAwesomeIcons.screwdriverWrench,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        width: 60,
                        child: Text(
                          'Standard Warranty',
                          textAlign: TextAlign.center,
                          style: TypographyRoboto.regularNormal,
                        ),
                      ),
                    ]),
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Column(children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: ColorPallete.primary),
                      child: const Center(
                        child: FaIcon(
                          FontAwesomeIcons.book,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      width: 60,
                      child: Text(
                        'SOP',
                        textAlign: TextAlign.center,
                        style: TypographyRoboto.regularNormal,
                      ),
                    ),
                  ]),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: ColorPallete.primary),
                      child: const Center(
                        child: FaIcon(
                          FontAwesomeIcons.warehouse,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      width: 60,
                      child: Text(
                        'Factory Campaign',
                        textAlign: TextAlign.center,
                        style: TypographyRoboto.regularNormal,
                      ),
                    ),
                  ]),
                  const SizedBox(
                    width: 25,
                  ),
                  Column(children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: ColorPallete.primary),
                      child: const Center(
                        child: FaIcon(
                          FontAwesomeIcons.bookOpenReader,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      width: 60,
                      child: Text(
                        'WATAQ',
                        textAlign: TextAlign.center,
                        style: TypographyRoboto.regularNormal,
                      ),
                    ),
                  ]),
                  const SizedBox(
                    width: 25,
                  ),
                  Column(children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: ColorPallete.primary),
                      child: const Center(
                        child: FaIcon(
                          FontAwesomeIcons.image,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      width: 60,
                      child: Text(
                        'EMILADO',
                        textAlign: TextAlign.center,
                        style: TypographyRoboto.regularNormal,
                      ),
                    ),
                  ]),
                  const SizedBox(
                    width: 25,
                  ),
                  Column(children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: ColorPallete.primary),
                      child: const Center(
                        child: FaIcon(
                          FontAwesomeIcons.fileInvoice,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      width: 60,
                      child: Text(
                        'E-Form',
                        textAlign: TextAlign.center,
                        style: TypographyRoboto.regularNormal,
                      ),
                    ),
                  ]),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: ColorPallete.primary),
                      child: const Center(
                        child: FaIcon(
                          FontAwesomeIcons.sliders,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      width: 60,
                      child: Text(
                        'Main Tech',
                        textAlign: TextAlign.center,
                        style: TypographyRoboto.regularNormal,
                      ),
                    ),
                  ]),
                  const SizedBox(
                    width: 25,
                  ),
                  Column(children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: ColorPallete.primary),
                      child: const Center(
                        child: FaIcon(
                          FontAwesomeIcons.circleInfo,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      width: 60,
                      child: Text(
                        'Info',
                        textAlign: TextAlign.center,
                        style: TypographyRoboto.regularNormal,
                      ),
                    ),
                  ]),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'Tips & Trik',
                style: TypographyRoboto.boldHeading1,
              ),
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      height: 350,
                      width: 225,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: ColorPallete.box),
                      child: Text(
                        'No.1',
                        style: TypographyRoboto.boldHeading2,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      height: 350,
                      width: 225,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: ColorPallete.box),
                      child: Text(
                        'No.2',
                        style: TypographyRoboto.boldHeading2,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      height: 350,
                      width: 225,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: ColorPallete.box),
                      child: Text(
                        'No.3',
                        style: TypographyRoboto.boldHeading2,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

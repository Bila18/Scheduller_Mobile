import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:scheduller_mobile/utils/color_pallete.dart';
import 'package:scheduller_mobile/utils/function.dart';
import 'package:scheduller_mobile/utils/reusable_widget.dart';
import 'package:scheduller_mobile/utils/typography.dart';
import 'package:scheduller_mobile/views/menu/delivery_view.dart';
import 'package:scheduller_mobile/views/menu/eform_view.dart';
import 'package:scheduller_mobile/views/menu/emilado_view.dart';
import 'package:scheduller_mobile/views/menu/factory_campaign_view.dart';
import 'package:scheduller_mobile/views/menu/info_view.dart';
import 'package:scheduller_mobile/views/menu/main_tech_view.dart';
import 'package:scheduller_mobile/views/menu/periodical_view.dart';
import 'package:scheduller_mobile/views/menu/sop_view.dart';
import 'package:scheduller_mobile/views/menu/standard_warranty_view.dart';
import 'package:scheduller_mobile/views/menu/wataq_view.dart';
import 'package:firebase_storage/firebase_storage.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    delivery();
    periodical();
    standard();
    sop();
    fcDc();
    wataq();
    emilado();
    eForm();
    mainTech();
    info();
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: ColorPallete.primary,
        actions: [
          Padding(
              padding: const EdgeInsets.only(right: 10),
              child: IconButton(
                onPressed: () {
                  popUpExit(context, 'assets/logout.png',
                      'Apakah anda yakin ingin keluar?');
                },
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
          padding:
              const EdgeInsets.only(top: 30, bottom: 30, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hi, Scheduller!',
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
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              DeliveryView(listUrlDlvr, listNameDlv),
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
                        width: 65,
                        child: Text(
                          'Delivery',
                          textAlign: TextAlign.center,
                          style: TypographyRoboto.regularNormal,
                        ),
                      ),
                    ]),
                  ),
                  // const SizedBox(
                  //   width: 15,
                  // ),
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
                        width: 65,
                        child: Text(
                          'Periodical Service',
                          textAlign: TextAlign.center,
                          style: TypographyRoboto.regularNormal,
                        ),
                      ),
                    ]),
                  ),
                  // const SizedBox(
                  //   width: 15,
                  // ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const StandardWarrantyView(),
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
                            FontAwesomeIcons.screwdriverWrench,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        width: 65,
                        child: Text(
                          'Standard Warranty',
                          textAlign: TextAlign.center,
                          style: TypographyRoboto.regularNormal,
                        ),
                      ),
                    ]),
                  ),
                  // const SizedBox(
                  //   width: 15,
                  // ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SopView(),
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
                            FontAwesomeIcons.book,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        width: 65,
                        child: Text(
                          'SOP',
                          textAlign: TextAlign.center,
                          style: TypographyRoboto.regularNormal,
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const FactoryCampaignView(),
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
                            FontAwesomeIcons.warehouse,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        width: 65,
                        child: Text(
                          'FC & DC',
                          textAlign: TextAlign.center,
                          style: TypographyRoboto.regularNormal,
                        ),
                      ),
                    ]),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const WataqView(),
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
                            FontAwesomeIcons.bookOpenReader,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        width: 65,
                        child: Text(
                          'WATAQ',
                          textAlign: TextAlign.center,
                          style: TypographyRoboto.regularNormal,
                        ),
                      ),
                    ]),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const EmiladoView(),
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
                            FontAwesomeIcons.image,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        width: 65,
                        child: Text(
                          'EMILADO',
                          textAlign: TextAlign.center,
                          style: TypographyRoboto.regularNormal,
                        ),
                      ),
                    ]),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const EFormView(),
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
                            FontAwesomeIcons.fileInvoice,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        width: 65,
                        child: Text(
                          'E-Form',
                          textAlign: TextAlign.center,
                          style: TypographyRoboto.regularNormal,
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 12,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MainTechView(),
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
                            FontAwesomeIcons.sliders,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        width: 65,
                        child: Text(
                          'Main Tech',
                          textAlign: TextAlign.center,
                          style: TypographyRoboto.regularNormal,
                        ),
                      ),
                    ]),
                  ),
                  const SizedBox(
                    width: 27,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const InfoView(),
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
                            FontAwesomeIcons.circleInfo,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        width: 65,
                        child: Text(
                          'Info',
                          textAlign: TextAlign.center,
                          style: TypographyRoboto.regularNormal,
                        ),
                      ),
                    ]),
                  ),
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

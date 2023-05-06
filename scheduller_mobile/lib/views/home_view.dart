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

import '../widget/tips_trik.dart';

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
                  popUpExit(
                      context, 'assets/logout.png', "Log out of your account?");
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
                'Hi, Scheduler!',
                style: TypographyRoboto.boldHeading1,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'What do you want to know?',
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
                    onTap: () async {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              DeliveryView(listUrlDlvr, listNameDlv),
                        ),
                      );
                      await delivery();
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
                    onTap: () async {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              PeriodicalServiceView(listUrlPs, listNamePs),
                        ),
                      );
                      await periodical();
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
                    onTap: () async {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              StandardWarrantyView(listUrlSw, listNameSw),
                        ),
                      );
                      await standard();
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
                    onTap: () async {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              SopView(listUrlSop, listNameSop),
                        ),
                      );
                      await sop();
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
                    onTap: () async {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              FactoryCampaignView(listUrlFc, listNameFc),
                        ),
                      );
                      await fcDc();
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
                    onTap: () async {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              WataqView(listUrlWtq, listNameWtq),
                        ),
                      );
                      await wataq();
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
                    onTap: () async {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              EmiladoView(listUrlEmd, listNameEmd),
                        ),
                      );
                      await emilado();
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
                    onTap: () async {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              EFormView(listUrlEf, listNameEf),
                        ),
                      );
                      await eForm();
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
                    onTap: () async {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              MainTechView(listUrlMt, listNameMt),
                        ),
                      );
                      await mainTech();
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
                    onTap: () async {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => InfoView(listUrlIf, listNameIf),
                        ),
                      );
                      await info();
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
              // ListView.builder(
              //   scrollDirection: Axis.horizontal,
              //   shrinkWrap: true,
              //   itemCount: image.length,
              //   itemBuilder: (context, index) => Image.asset(
              //     image.elementAt(index),
              //     height: 350,
              //   ),
              // ),
              // SingleChildScrollView(
              //   scrollDirection: Axis.horizontal,
              //   child: Row(
              //     children: [
              //       Image.asset(
              //         'assets/tips_trik/hal_3.png',
              //         height: 350,
              //       ),
              //       const SizedBox(
              //         width: 20,
              //       ),
              //       Container(
              //         padding: const EdgeInsets.all(10),
              //         height: 350,
              //         width: 225,
              //         decoration: BoxDecoration(
              //             borderRadius: BorderRadius.circular(10),
              //             color: ColorPallete.box),
              //         child: Text(
              //           'No.2',
              //           style: TypographyRoboto.boldHeading2,
              //         ),
              //       ),
              //       const SizedBox(
              //         width: 20,
              //       ),
              //       Container(
              //         padding: const EdgeInsets.all(10),
              //         height: 350,
              //         width: 225,
              //         decoration: BoxDecoration(
              //             borderRadius: BorderRadius.circular(10),
              //             color: ColorPallete.box),
              //         child: Text(
              //           'No.3',
              //           style: TypographyRoboto.boldHeading2,
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              const SizedBox(
                height: 350,
                child: TipsTriks(),
              )
              // ListView.builder(
              //   scrollDirection: Axis.horizontal,
              //   shrinkWrap: true,
              //   itemCount: image.length,
              //   itemBuilder:
              // (context, index) => Image.asset(
              //     image.elementAt(index),
              //     height: 350,
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

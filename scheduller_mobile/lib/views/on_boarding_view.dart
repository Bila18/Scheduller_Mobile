import 'package:flutter/material.dart';
import 'package:scheduller_mobile/utils/color_pallete.dart';
import 'package:scheduller_mobile/utils/on_boarding.dart';
import 'package:scheduller_mobile/utils/typography.dart';
import 'package:scheduller_mobile/views/login_view.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  int currentIndex = 0;

  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          left: 30,
          right: 30,
          bottom: 30,
        ),
        child: PageView.builder(
          controller: _controller,
          onPageChanged: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          itemBuilder: (context, index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                onBoarding[index],
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginView(),
                          ),
                        );
                      },
                      child: Text(
                        'Lewati',
                        style: TypographyRoboto.skip,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (_controller.hasClients) {
                          _controller.nextPage(
                              duration: const Duration(milliseconds: 400),
                              curve: Curves.easeInOut);
                        }
                        if (currentIndex == 2) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginView(),
                            ),
                          );
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: ColorPallete.primary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text(
                        'Berikutnya',
                        style: TypographyRoboto.next,
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
          itemCount: onBoarding.length,
        ),
      ),
    );
  }
}

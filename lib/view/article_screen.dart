import 'package:blog_club/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ArticleScreen extends StatefulWidget {
  const ArticleScreen({super.key});

  @override
  State<ArticleScreen> createState() => _ArticleScreenState();
}

class _ArticleScreenState extends State<ArticleScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
        label: const Text("2.1k"),
        icon: const Icon(Icons.thumb_up),
      ),
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                leadingWidth: 100,
                leading: IconButton(
                  onPressed: () => Navigator.pop(context),
                  iconSize: 30,
                  icon: const Icon(CupertinoIcons.chevron_back),
                ),
                actions: [
                  Padding(
                    padding: const EdgeInsets.only(right: 25),
                    child: IconButton(
                      onPressed: () {},
                      iconSize: 35,
                      icon: const Icon(Icons.more_horiz),
                    ),
                  ),
                ],
              ),
              SliverList(
                delegate: SliverChildListDelegate.fixed([
                  Padding(
                    padding: const EdgeInsets.all(25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Four things Every Woman Needs To Know",
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(35),
                              child: Image.asset(
                                "assets/img/stories/story_5.jpg",
                                width: 55,
                                height: 55,
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Richard Gervain",
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text("2m ago"),
                              ],
                            ),
                            const Spacer(),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.send_outlined,
                                  color: primaryColor,
                                )),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.bookmark_outline,
                                  color: primaryColor,
                                )),
                          ],
                        ),
                      ],
                    ),
                  ),
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30),
                    ),
                    child: Image.asset("assets/img/background/single_post.png"),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 25, 30, 0),
                    child: Text(
                      "A man's emotional tendencies is never your mind responsibility.",
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 15, 20, 80),
                    child: Text(
                      '''A man’s sexuality is never your mind responsibility.\nThis one got an incredible amount of backlash the last time I said it, so I’m going to say it again: a man’s sexuality is never, ever your responsibility, under any circumstances. Whether it’s the fifth date or your twentieth year of marriage, the correct determining factor for whether or not you have sex with your partner isn’t whether you ought to “take care of him” or “put out” because it’s been a while or he’s really horny — the correct determining factor for whether or not you have sex is whether or not you want to have sex.This one got an incredible amount of backlash the last time I said it, so I’m going to say it again: a man’s sexuality is never, ever your responsibility, under any circumstances. Whether it’s the fifth date or your twentieth year of marriage, the correct determining factor for whether or not you have sex with your partner isn’t whether you ought to “take care of him” or “put out” because it’s been a while or he’s really horny — the correct determining factor for whether or not you have sex is whether or not you want to have sex.This one got an incredible amount of backlash the last time I said it, so I’m going to say it again: a man’s sexuality is never, ever your responsibility, under any circumstances. Whether it’s the fifth date or your twentieth year of marriage, the correct determining factor for whether or not you have sex with your partner isn’t whether you ought to “take care of him” or “put out” because it’s been a while or he’s really horny — the correct determining factor for whether or not you have sex is whether or not you want to have sex.''',
                      style: Theme.of(context).textTheme.bodyLarge,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ]),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.sizeOf(context).width,
              height: MediaQuery.sizeOf(context).height / 8,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.white,
                    Colors.white.withOpacity(0.2),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:promiloapp/utility/botom_bar_section.dart';
import 'package:promiloapp/utility/meetup_card.dart';
import 'package:promiloapp/utility/trending_card.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IndividualMeetupPage extends StatefulWidget {
  const IndividualMeetupPage({super.key});

  @override
  State<IndividualMeetupPage> createState() => _IndividualMeetupPageState();
}

class _IndividualMeetupPageState extends State<IndividualMeetupPage> {
  int activeIndex = 0;
  final urlImages = [
    "https://plus.unsplash.com/premium_photo-1712935547772-e629ccdafe74?q=80&w=1935&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "https://images.unsplash.com/photo-1718653505304-7a4ab69748c7?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "https://images.unsplash.com/photo-1718972167976-f8cb691d99d2?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  ];
  final meetUpImage = [
    "https://plus.unsplash.com/premium_photo-1661299252549-60847804b646?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "https://images.unsplash.com/photo-1543269865-cbf427effbad?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "https://images.unsplash.com/photo-1559136656-3db4bf6c35f8?q=80&w=2069&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "https://plus.unsplash.com/premium_photo-1683140881715-a160d81e1b7d?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "https://images.unsplash.com/photo-1600880292203-757bb62b4baf?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "https://images.unsplash.com/photo-1573496546038-82f9c39f6365?q=80&w=2069&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Individual Meetup'),
        titleSpacing: 0,
        leading: IconButton(
            onPressed: () {}, icon: const Icon(Icons.arrow_back_ios_new)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //searchBar
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 35,
                      width: 300,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.red),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(5)),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.search),
                            Expanded(child: Text('Search')),
                            Icon(Icons.mic),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              // carouselSlider
              CarouselSlider.builder(
                itemCount: urlImages.length,
                itemBuilder: (context, index, realIndex) {
                  final urlImage = urlImages[index];
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 12),
                      color: Colors.grey,
                      width: MediaQuery.of(context).size.width,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.network(
                          urlImage,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                },
                options: CarouselOptions(
                    clipBehavior: Clip.none,
                    height: 200,
                    autoPlay: true,
                    // reverse: true,
                    autoPlayInterval: const Duration(seconds: 2),
                    onPageChanged: (index, reason) =>
                        setState(() => activeIndex = index)),
              ),
              const SizedBox(height: 10),
              Center(
                child: AnimatedSmoothIndicator(
                  activeIndex: activeIndex,
                  count: urlImages.length,
                  effect: const SlideEffect(
                    dotHeight: 10,
                    dotWidth: 10,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Trending Popular People",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
              ),
              // Trending Popular People Card
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    TrendingCard(),
                    SizedBox(width: 10),
                    TrendingCard(),
                    SizedBox(width: 10),
                    TrendingCard(),
                    SizedBox(width: 10),
                    TrendingCard(),
                  ],
                ),
              ),
              // meetup card
              const SizedBox(height: 15),
              const Text(
                "Top Trending Meetups",
                style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Row(
                    children: [
                      ...List.generate(meetUpImage.length, (index) {
                        return MeetupCard(
                          // color: Colors.black,
                          height: 200,
                          width: 200,
                          child: Image.network(
                            meetUpImage[index],
                            fit: BoxFit.cover,
                          ),
                        );
                      })
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomBarSection(),
    );
  }
}

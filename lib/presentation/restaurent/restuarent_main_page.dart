import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/core/constants.dart';
import 'package:foodapp/presentation/all_purpose_widgets/main_titile.dart';
import 'package:foodapp/presentation/insideresto/inside_resto.dart';
import 'package:foodapp/presentation/restaurent/widgets/order_now_box.dart';
import 'package:foodapp/presentation/restaurent/widgets/restaurent_list.dart';
import 'package:foodapp/presentation/restaurent/widgets/surprise.dart';
import 'package:foodapp/presentation/restaurent/widgets/top_rated_card.dart';

class RestaurentMainPage extends StatelessWidget {
  const RestaurentMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          title: TextButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.near_me),
            label: const Text(
              'Pathanamthitta Town',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.person))
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CupertinoSearchTextField(
                  placeholder: 'Search,Order,Enjoy,Repeat!',
                  backgroundColor: Colors.grey.withOpacity(0.4),
                  prefixIcon: const Icon(
                    CupertinoIcons.search,
                    color: Colors.grey,
                  ),
                  suffixIcon: const Icon(CupertinoIcons.xmark_circle_fill),
                  style: const TextStyle(color: Colors.white),
                ),
                kHeight20,
                const SurpriseWidget(),
                kHeight20,
                LimitedBox(
                  maxHeight: 200,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return const Padding(
                        padding: EdgeInsets.all(20.0),
                        child: OrderNwBox(),
                      );
                    },
                  ),
                ),
                kHeight20,
                const MainTitle(title: 'Top Rated near you'),
                kHeight20,
                LimitedBox(
                  maxHeight: 200,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return const TopRatedCard();
                    },
                  ),
                ),
                kHeight20,
                const MainTitle(title: 'Restaurents'),
                kHeight20,
                LimitedBox(
                  maxHeight: 400,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: RestaurentList(
                          restoTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (ctx) => const InsideResto()),
                            );
                          },
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

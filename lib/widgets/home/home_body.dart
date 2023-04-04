import 'package:flutter/material.dart';
import 'package:store_app/constants.dart';
import 'package:store_app/models/products.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(height: KDefaultPadding / 2),
          Expanded(
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 70.0),
                  decoration: BoxDecoration(
                    color: KBackgroundColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                ),
                ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) => ProductCard(),
                ),
                ProductCard(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.itemIndex,
    required this.product,
  });
  final int itemIndex;
  final Product product;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: KDefaultPadding,
        vertical: KDefaultPadding,
      ),
      height: 190.0,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: 166.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 15),
                      blurRadius: 25,
                      color: Colors.black12),
                ]),
          ),
          Positioned(
            top: 0.0,
            left: 0.0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: KDefaultPadding),
              height: 160.0,
              width: 200.0,
              child: Image.asset(
                'images/airpod.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 0.0,
            right: 0.0,
            child: SizedBox(
              height: 136.0,
              width: size.width - 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: KDefaultPadding),
                    child: Text(
                      "سماعات لاسلكية",
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: KDefaultPadding),
                    child: Text(
                      "جودة صوت عالية",
                      style: Theme.of(context).textTheme.caption,
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(KDefaultPadding),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: KDefaultPadding * 1.5,
                          vertical: KDefaultPadding / 5),
                      decoration: BoxDecoration(
                        color: KsecondaryColor,
                        borderRadius: BorderRadius.circular(22),
                      ),
                      child: Text("السعر: \$999"),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

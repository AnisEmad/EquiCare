import 'package:flutter/material.dart';
import 'package:final_project/Models/grid_item_model.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});
  static const gridData = [
    'Sire\'s side GrandFather',
    'Sire\'s side GrandFather',
    'Dam\'s side GrandFather',
    'Dam\'s side GrandFather',
  ];
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          'assets/images/backgroud.png',
          fit: BoxFit.cover,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 0.25,
                  height: MediaQuery.sizeOf(context).width * 0.25,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xffE4AB6E),
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/horse.png',
                      ),
                    ),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.camera_alt_rounded,
                      size: MediaQuery.sizeOf(context).width * 0.15,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(height: 35),
              ),
              const DetailsWidget(
                details: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DetailItem(
                      header: 'Name',
                      value: 'Not Set',
                    ),
                    DetailItem(
                      header: 'Gender',
                      value: 'Not Set',
                    ),
                    DetailItem(
                      header: 'Date of birth',
                      value: 'Not Set',
                    ),
                  ],
                ),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 20,
                ),
              ),
              const DetailsWidget(
                details: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DetailItem(
                      header: 'Bread',
                      value: 'Not Set',
                    ),
                    DetailItem(
                      header: 'Coat',
                      value: 'Not Set',
                    ),
                    DetailItem(
                      header: 'Medical or health Notes',
                      value: 'Not Set',
                    ),
                  ],
                ),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 20,
                ),
              ),
              const DetailsWidget(
                details: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DetailItem(
                      header: 'Country of birth',
                      value: 'Not Set',
                    ),
                    DetailItem(
                      header: 'Breeder',
                      value: 'Not Set',
                    ),
                    DetailItem(
                      header: 'Price',
                      value: 'Not Set',
                    ),
                  ],
                ),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 20,
                ),
              ),
              const DetailsWidget(
                details: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DetailItem(
                      header: 'National ID',
                      value: 'Not Set',
                    ),
                    DetailItem(
                      header: 'UELN',
                      value: 'Not Set',
                    ),
                    DetailItem(
                      header: 'FEI ID',
                      value: 'Not Set',
                    ),
                  ],
                ),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 20,
                ),
              ),
              const DetailsWidget(
                details: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Sire',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    DetailItem(
                      header: 'Name',
                      value: 'Not Set',
                    ),
                    DetailItem(
                      header: 'FEI ID',
                      value: 'Not Set',
                    ),
                  ],
                ),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 20,
                ),
              ),
              const DetailsWidget(
                details: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Dam',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    DetailItem(
                      header: 'Name',
                      value: 'Not Set',
                    ),
                    DetailItem(
                      header: 'FEI ID',
                      value: 'Not Set',
                    ),
                  ],
                ),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 20,
                ),
              ),
              SliverToBoxAdapter(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: const Color(0xffE4AB6E).withOpacity(0.4),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              gridData[0],
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                            const DetailItem(
                              header: 'Name',
                              value: 'Not Set',
                            ),
                            const DetailItem(
                              header: 'FEI ID',
                              value: 'Not Set',
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: const Color(0xffE4AB6E).withOpacity(0.4),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              gridData[1],
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                            const DetailItem(
                              header: 'Name',
                              value: 'Not Set',
                            ),
                            const DetailItem(
                              header: 'FEI ID',
                              value: 'Not Set',
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 20,
                ),
              ),
              SliverToBoxAdapter(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: const Color(0xffE4AB6E).withOpacity(0.4),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              gridData[0],
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                            const DetailItem(
                              header: 'Name',
                              value: 'Not Set',
                            ),
                            const DetailItem(
                              header: 'FEI ID',
                              value: 'Not Set',
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: const Color(0xffE4AB6E).withOpacity(0.4),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              gridData[1],
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                            const DetailItem(
                              header: 'Name',
                              value: 'Not Set',
                            ),
                            const DetailItem(
                              header: 'FEI ID',
                              value: 'Not Set',
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class DetailItem extends StatelessWidget {
  const DetailItem({
    super.key,
    required this.header,
    required this.value,
  });
  final String header, value;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          header,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        Text(
          value,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 15,
          ),
        ),
      ],
    );
  }
}

class DetailsWidget extends StatelessWidget {
  const DetailsWidget({
    super.key,
    required this.details,
  });
  final Widget details;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: const Color(0xffE4AB6E).withOpacity(0.4),
        ),
        child: details,
      ),
    );
  }
}

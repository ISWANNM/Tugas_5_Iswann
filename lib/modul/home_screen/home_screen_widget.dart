import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pertemuan_lima/configs/app_routes.dart';
import 'package:pertemuan_lima/models/user.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    super.key,
    required this.user,
  });

  final User user;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Hi, Selamat datang",
            ),
            Text(
              user.name,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const Expanded(
          child: SizedBox(),
        ),
        CircleAvatar(
          backgroundImage: NetworkImage(
            user.profileImage ??
                "https://https://cdn.antaranews.com/cache/800x533/2013/01/20130125Logo-baru-Semakin-di-Depan.jpg",
          ),
        ),
      ],
    );
  }
}

class MenuWidget extends StatelessWidget {
  const MenuWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        menuItem(
          iconData: Icons.home_rounded,
          label: "House",
        ),
        menuItem(
          iconData: Icons.apartment_rounded,
          label: "Apartment",
        ),
        menuItem(
          iconData: Icons.landscape_rounded,
          label: "Land",
        ),
        menuItem(
          iconData: Icons.location_city_rounded,
          label: "Townhouse",
        ),
      ],
    );
  }

  Widget menuItem({
    required IconData iconData,
    required String label,
  }) {
    return Container(
      constraints: const BoxConstraints(
        minWidth: 72,
        maxWidth: 72,
        minHeight: 72,
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.amber,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Icon(
              iconData,
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            label,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class SearchBoxWidget extends StatelessWidget {
  const SearchBoxWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(
        fontSize: 14,
      ),
      textInputAction: TextInputAction.search,
      decoration: InputDecoration(
        isDense: true,
        hintText: "Masukkan pencarian disini",
        filled: true,
        fillColor: Colors.grey[300],
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(16),
          gapPadding: 0,
        ),
        suffixIcon: const Icon(
          Icons.search,
          size: 20,
        ),
      ),
    );
  }
}

class ExpandedSectionWidget extends StatelessWidget {
  const ExpandedSectionWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionTitle(
          label: "Latest Info",
        ),
        const SizedBox(
          height: 8,
        ),
        Stack(
          children: [
            Container(
              width: double.infinity,
              height: (size.width - 32) * 0.55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.blue,
                image: const DecorationImage(
                  image: NetworkImage(
                    "https://data:image/jpeg;base64,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",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: const Center(
                child: Text(
                  "",
                ),
              ),
            ),
            const Positioned.fill(
              child: Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Hotest News",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    super.key,
    required this.label,
  });

  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 16,
          ),
        ),
        const Icon(
          Icons.chevron_right_rounded,
          color: Colors.blue,
        ),
      ],
    );
  }
}

class ConstrainedBoxWidget extends StatelessWidget {
  const ConstrainedBoxWidget({
    super.key,
    required this.size,
    required this.categories,
  });

  final Size size;
  final List<String> categories;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionTitle(
          label: "Constrained Box",
        ),
        const SizedBox(
          height: 8,
        ),
        ConstrainedBox(
          constraints: BoxConstraints.expand(
            width: size.width,
            height: (size.width * 0.2) * 2 + 8,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for (int i = 0; i < 2; i++)
                Column(
                  children: [
                    InkWell(
                      onTap: () {
                        GoRouter.of(context).goNamed(
                          AppRoutes.newsDetail,
                          params: {
                            "id": "$i",
                          },
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 1,
                              spreadRadius: 0,
                              color: Colors.black12,
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            Container(
                              height: size.width * 0.2,
                              decoration: const BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  bottomLeft: Radius.circular(8),
                                ),
                                image: DecorationImage(
                                  image: NetworkImage(
                                    "https://picsum.photos/400",
                                  ),
                                ),
                              ),
                              child: const AspectRatio(
                                aspectRatio: 1 / 1,
                              ),
                            ),
                            const Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "Yamaha Indonesia cukup aktif di awal 2023 dengan menghadirkan warna baru pada beberapa model produknya. Setelah Yamaha XSR 155 dan NMax 155, kini giliran Yamaha R15 yang mendapat penyegaran.",
                                  maxLines: 3,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                  ],
                ),
            ],
          ),
        ),
      ],
    );
  }
}

class AspectRatioWidget extends StatelessWidget {
  const AspectRatioWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Aspect Ratio",
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.red,
                  image: const DecorationImage(
                    image: NetworkImage(
                      "https://picsum.photos/400",
                    ),
                  ),
                ),
                child: const AspectRatio(
                  aspectRatio: 1 / 1,
                ),
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Container(
              width: size.width * 0.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.red,
                image: const DecorationImage(
                  image: NetworkImage(
                    "https://picsum.photos/1080/607",
                  ),
                ),
              ),
              child: const AspectRatio(
                aspectRatio: 16 / 9,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class PopularSectionWidget extends StatelessWidget {
  const PopularSectionWidget({
    super.key,
    required this.categories,
  });

  final List<String> categories;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Most Popular",
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Wrap(
          spacing: 4,
          runSpacing: 4,
          children: categories.map((e) => wrapItem(e)).toList(),
        ),
      ],
    );
  }

  Widget wrapItem(String label) {
    return Chip(
      label: Text(
        label,
      ),
    );
  }
}

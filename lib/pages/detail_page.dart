import "dart:ui";
import "package:flutter/material.dart";
import "package:nft_flutter/components/app_theme.dart";

class DetailPage extends StatelessWidget {
  final String price;
  final String creator;
  final String image;
  final String minutes;
  final String hours;
  final String day;
  final String name;
  final String creatorImage;
  final String follower;
  const DetailPage({
    Key? key,
    required this.price,
    required this.creator,
    required this.image,
    required this.minutes,
    required this.hours,
    required this.day,
    required this.name,
    required this.creatorImage,
    required this.follower,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackGround.primaryColor,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            appbar(context),
            follow(),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Divider(),
                    Text(
                      name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 27,
                      ),
                    ),
                    const SizedBox(height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Text('NFTs, or Non-Fungible Tokens, have revolutionized the digital world by introducing a unique way of owning and trading digital assets using blockchain technology. Unlike cryptocurrencies like Bitcoin or Ethereum, which are fungible and can be exchanged on a one-to-one basis, each NFT is distinct, carrying its own specific value and characteristics. NFTs have gained immense popularity in the art world, enabling artists to tokenize their work, thereby ensuring authenticity and ownership. These digital tokens have also found applications in various other sectors such as gaming, real estate, and collectibles. As the interest in NFTs continues to grow, they are becoming an integral part of the broader crypto economy, challenging traditional notions of ownership and value in the digital age.',
                       style: TextStyle(
                        fontSize: 17,
                        color: FontTextColor.secondaryColor,
                       ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  SliverToBoxAdapter follow() {
    return SliverToBoxAdapter(
      child: ListTile(
        trailing: Container(
          alignment: Alignment.center,
          width: 80,
          height: 80,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  offset: const Offset(4, 2),
                  color: CardColor.primaryColor,
                  blurRadius: 20,
                ),
              ],
              color: CardColor.thirdColor,
              borderRadius: BorderRadius.circular(30)),
          child: Text(
            'Follow +',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: TextButtonColor.primaryColor,
            ),
          ),
        ),
        subtitle: Text(
          '$follower Follower ',
          style: const TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
        title: Text(
          creator,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 19,
          ),
        ),
        leading: CircleAvatar(
          backgroundImage: AssetImage(
            'lib/assets/$creatorImage',
          ),
        ),
      ),
    );
  }

  SliverAppBar appbar(BuildContext context) {
    return SliverAppBar(
      backgroundColor: BackGround.primaryColor,
      automaticallyImplyLeading: false,
      expandedHeight: 500,
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          alignment: AlignmentDirectional.bottomStart,
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('lib/assets/$image.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 70),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      ClipRRect(
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                          child: Container(
                            alignment: Alignment.center,
                            width: 39,
                            height: 39,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.topRight,
                                colors: [
                                  CardColor.thirdColor.withOpacity(0.6),
                                  CardColor.thirdColor.withOpacity(0.3),
                                ],
                              ),
                            ),
                            child: Text(
                              '$day D',
                              style:
                                  const TextStyle(fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 4),
                      Text(
                        ':',
                        style: TextStyle(
                          fontSize: 20,
                          color: FontTextColor.primaryColor,
                        ),
                      ),
                      const SizedBox(width: 4),
                      ClipRRect(
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                          child: Container(
                            alignment: Alignment.center,
                            width: 39,
                            height: 39,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.topRight,
                                colors: [
                                  CardColor.thirdColor.withOpacity(0.6),
                                  CardColor.thirdColor.withOpacity(0.3),
                                ],
                              ),
                            ),
                            child: Text(
                              '$hours H',
                              style:
                                  const TextStyle(fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 4),
                      Text(
                        ':',
                        style: TextStyle(
                          fontSize: 20,
                          color: FontTextColor.primaryColor,
                        ),
                      ),
                      const SizedBox(width: 4),
                      ClipRRect(
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                          child: Container(
                            alignment: Alignment.center,
                            width: 39,
                            height: 39,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.topRight,
                                colors: [
                                  CardColor.thirdColor.withOpacity(0.6),
                                  CardColor.thirdColor.withOpacity(0.3),
                                ],
                              ),
                            ),
                            child: Text(
                              '$minutes M',
                              style:
                                  const TextStyle(fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  ClipRRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                      child: Container(
                        alignment: Alignment.center,
                        width: 130,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.topRight,
                            colors: [
                              CardColor.thirdColor.withOpacity(0.6),
                              CardColor.thirdColor.withOpacity(0.3),
                            ],
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset('lib/assets/et.png'),
                              Text(
                                '$price ETH',
                                style: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(10),
        child: Container(
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(70),
              topRight: Radius.circular(70),
            ),
            color: CardColor.thirdColor,
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              Container(
                width: 80,
                height: 4,
                color: CardColor.fourthColor,
              )
            ],
          ),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: CircleAvatar(
            backgroundColor: CardColor.fourthColor,
            radius: 19,
            child: Icon(
              Icons.favorite,
              color: CardColor.thirdColor,
              size: 20,
            ),
          ),
        ),
      ],
      title: CircleAvatar(
        backgroundColor: CardColor.thirdColor,
        radius: 19,
        child: GestureDetector(
          onTap: () => Navigator.of(context).pop(),
          child: Icon(
            Icons.arrow_back,
            color: CardColor.fourthColor,
            size: 20,
          ),
        ),
      ),
    );
  }
}

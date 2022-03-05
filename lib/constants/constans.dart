import 'package:crypto_app/cryptocostumicons_icons.dart';
import 'package:flutter/cupertino.dart';

const bottomNavIcons = [
  Cryptocostumicons.home_inactive,
  Cryptocostumicons.market_inactive,
  Cryptocostumicons.trades_inactive,
  Cryptocostumicons.activity_inactive,
  Cryptocostumicons.wallet_inactive
];
const bottomNavText = ['Home', 'Markets', 'Trades', 'Activity', 'Wallets'];
List<HomeIcon> homeIcons = [
  HomeIcon(assets: 'assets/Deposit.png', text: 'Deposit'),
  HomeIcon(assets: 'assets/Referral.png', text: 'Referral'),
  HomeIcon(assets: 'assets/Grid_trading.png', text: 'Grid Trading'),
  HomeIcon(assets: 'assets/Margin.png', text: ' Margin'),
  HomeIcon(assets: 'assets/Launchpad.png', text: 'Launchpad'),
  HomeIcon(assets: 'assets/Saving.png', text: 'Savings'),
  HomeIcon(assets: 'assets/Liquid_swap.png', text: 'Liquid Swap'),
  HomeIcon(assets: 'assets/More.png', text: 'More')
];
List<Coin> listCoin = [
  Coin(
      price: 40.059,
      name: 'BTC/BUSD',
      profit: 0.81,
      color: const Color(0xFF5ED5A8),
      asset: 'assets/bitcoin.png',
      image: 'assets/green_graph.png'),
  Coin(
      price: 2.059,
      name: 'BTC/BUSD',
      profit: 0.81,
      color: const Color(0xFFDD4B4B),
      asset: 'assets/chainlink.png',
      image: 'assets/red_graph.png'),
  Coin(
      price: 40.059,
      name: 'MFT/BUSD',
      profit: 0.81,
      color: const Color(0xFF5ED5A8),
      asset: 'assets/hifi.png',
      image: 'assets/green_graph.png'),
];

class HomeIcon {
  final String assets;
  final String text;
  HomeIcon({required this.assets, required this.text});
}

class Coin {
  final String image;
  final double price;
  final String name;
  final double profit;
  final Color color;
  final String asset;

  Coin(
      {required this.image,
      required this.asset,
      required this.price,
      required this.name,
      required this.profit,
      required this.color});
}

import 'dart:ui';

class PaymentCard {
  String logoImage;
  String number;
  String balance;
  String cartTypeImageUrl;
  Color cardColor;
  PaymentCard(
      {this.logoImage,
      this.number,
      this.balance,
      this.cartTypeImageUrl,
      this.cardColor});
}

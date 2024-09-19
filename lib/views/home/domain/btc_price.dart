class BTCPrice {
  final String startDate;
  final String endDate;
  final String openPrice;
  final String high;
  final String low;
  const BTCPrice(
      {this.startDate = "",
      this.endDate = "",
      this.openPrice = "",
      this.high = "",
      this.low = ""});
  factory BTCPrice.fromJson(Map<String, dynamic> json) {
    return BTCPrice(
      startDate: json['start'],
      endDate: json['end'],
      openPrice: json['open'],
      high: json['high'],
      low: json['low'],
    );
  }
}

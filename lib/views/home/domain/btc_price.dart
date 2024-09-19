class BTCPrice {
  final String startDate;
  final String endDate;
  final String openPrice;
  final String high;
  final String low;
  final String close;

  const BTCPrice({
    this.startDate = "",
    this.endDate = "",
    this.openPrice = "",
    this.high = "",
    this.low = "",
    this.close = "",
  });
  factory BTCPrice.fromJson(Map<String, dynamic> json) {
    return BTCPrice(
      startDate: json['start'],
      endDate: json['end'],
      openPrice: json['open'],
      high: json['high'],
      low: json['low'],
      close: json['close'],
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'start': startDate,
      'end': endDate,
      'open': openPrice,
      'high': high,
      'low': low,
      'close': close,
    };
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is BTCPrice &&
        other.startDate == startDate &&
        other.endDate == endDate &&
        other.openPrice == openPrice &&
        other.high == high &&
        other.low == low &&
        other.close == close;
  }

  @override
  int get hashCode {
    return startDate.hashCode ^
        endDate.hashCode ^
        openPrice.hashCode ^
        high.hashCode ^
        low.hashCode ^
        close.hashCode;
  }
}

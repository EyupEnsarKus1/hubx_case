class SubscriptionModel {
  final String planId;
  final String title;
  final String duration;
  final String price;
  final String period;
  final String? originalPrice;
  final String? discountText;
  final bool isPopular;
  final bool isSelected;
  final bool hasFreeTrial;
  final String? freeTrialText;

  const SubscriptionModel({
    required this.planId,
    required this.title,
    required this.duration,
    required this.price,
    required this.period,
    this.originalPrice,
    this.discountText,
    this.isPopular = false,
    this.isSelected = false,
    this.hasFreeTrial = false,
    this.freeTrialText,
  });

  static const List<SubscriptionModel> samplePlans = [
    SubscriptionModel(
      planId: 'monthly',
      title: '1 Month',
      duration: 'month',
      price: '\$2.99',
      period: '/month, auto renewable',
      isSelected: false,
    ),
    SubscriptionModel(
      planId: 'yearly',
      title: '1 Year',
      duration: 'year',
      price: '\$529.99',
      period: '/year',
      discountText: 'Save 50%',
      isPopular: true,
      isSelected: true,
      hasFreeTrial: true,
      freeTrialText: 'First 3 days free, then',
    ),
  ];

  SubscriptionModel copyWith({
    String? planId,
    String? title,
    String? duration,
    String? price,
    String? period,
    String? originalPrice,
    String? discountText,
    bool? isPopular,
    bool? isSelected,
    bool? hasFreeTrial,
    String? freeTrialText,
  }) {
    return SubscriptionModel(
      planId: planId ?? this.planId,
      title: title ?? this.title,
      duration: duration ?? this.duration,
      price: price ?? this.price,
      period: period ?? this.period,
      originalPrice: originalPrice ?? this.originalPrice,
      discountText: discountText ?? this.discountText,
      isPopular: isPopular ?? this.isPopular,
      isSelected: isSelected ?? this.isSelected,
      hasFreeTrial: hasFreeTrial ?? this.hasFreeTrial,
      freeTrialText: freeTrialText ?? this.freeTrialText,
    );
  }
}

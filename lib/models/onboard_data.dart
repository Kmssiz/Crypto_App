class OnBoarding {
  final String title;
  final String description;
  final String image;

  OnBoarding(
      {required this.title, required this.description, required this.image});
}

List<OnBoarding> onboardingList = [
  OnBoarding(
      title: 'Trade anytime anywhere',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore.',
      image: 'assets/onboard_1.png'),
  OnBoarding(
      title: 'Save and invest at the same time',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore.',
      image: 'assets/onboard_2.png'),
  OnBoarding(
      title: 'Transact fast and easy',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore.',
      image: 'assets/onboard_3.png'),
];

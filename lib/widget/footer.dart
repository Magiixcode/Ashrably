class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'تم تطوير وتصميم هذا التطبيق بواسطة فريق  ',
          style: TextStyle(
            fontFamily: 'Marhey',
            color: Colors.white,
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          'MagixCode',
          style: TextStyle(
            fontFamily: 'Marhey',
            color: Colors.white,
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              borderRadius: BorderRadius.circular(15),
              onTap: () {
                launchURL('https://www.instagram.com/magixcode/');
              },
              child: Image.asset(
                'assets/images/instgaram.png',
                height: 40,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            InkWell(
              borderRadius: BorderRadius.circular(15),
              onTap: () {
                launchURL('https://m.facebook.com/Magicxcode/');
              },
              child: Image.asset(
                'assets/images/facebok.png',
                height: 40,
              ),
            ),
          ],
        )
      ],
    );
  }
}

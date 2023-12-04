import 'package:flutter/material.dart';

class HeroAnim extends StatefulWidget {
  const HeroAnim({super.key});

  @override
  State<HeroAnim> createState() => _HeroAnimState();
}

class _HeroAnimState extends State<HeroAnim> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Hero"),),
    body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Hero(
        tag: "id",
          child: Container(width: 400,height: 400,
    child: Image.network("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAMAAAAB5CAMAAABYx96IAAAAYFBMVEX///+kxjmhxC2qyUuixTL7/Pasy1G+1n/i7MfH25Cjxjaewh/E2Yro8NWmxz6fwye71Hj0+OqYvwDb6Lv3+vCuzFfW5bLR4qayzmDM3p240nCoyUbx9ePB2IW20WvK3Zeu4ReCAAADv0lEQVR4nO2b63KrIBSFK2BiQEVRo4lG3/8tj1qMJPWSwR6gM/v71bEa10I2183XFwAAAAD8FmGyf08S/n8d2pxZtndLxs4mlGiSinjvllikJpTo0oly+4ZSdGaUaNLUeLOAU1w3prTocd0u4U5cTSnRhbBc/tVkt0dyvyePWzaVes6ILV0fE4i+KfWjshKCcUR6EGdCVGXk902oCGzr28VvSVBWhBHvhf5CVQak9W3r2ydDjFNvAcoZ2u0m7NPhRfXSA3a7Ee0joF4u/fkr1E5HwfW96v+EMHcbUj9he/IHWOJoJH+o31kHfsU/0+95vHLRwVmWP+FoTTjiMkTYw7ban9xk+ZPilqxEMkluhfwXv9nW+04kZCEPc7LrYjCMzU8iP4+IbCt+xZ+KdhTmL3VmFA8VfzJKCrfCYKpAHhsM5PWSgXoYpkbTx3GrEvnP/pfc+5ItF9sj3k/W/PsUH5S79Akus2JUX9qV/oC1l3puofjFtuqZlypD+epwgqgDJYrz/V82xPXjLkwFuTMoeqx2XZsGnOnN8u0h9BoUuVKHGqGjv+8zXFlhKT8chb7DdhbBjHHWCoE+CFxZJS12p2HLkMK2cgkmVAuCbSuXVCdNKtvKJb42FkVHIcb37FcU+Nkd49Ds/CAPBScUiWJ8bXjWZNxsigqBKOEiNNmttXLwg/jQF9VIk7p/uJmm0Lw1p//67HrJEIdbi4lb0KEVqp5tsLmtA7+YFZPgmIFg7kOosVlmFM+Kh2nWEQPK5I3GpgJZKbVxXnXEgDKXG78mGAADYAAMgAEwAAbAABgAA2AADIABMAAGwAAYAANgAAy4aiBSBA9pP0cM3NQ0C1OLu6mimGfHDGTK6vT22YnfJOTzS/NjBvL5YW7ueJMfy20hKoZ09EM7NJmQT6PY4KZlhDmhHkVozHY4ZOCrRKj/KcKx0X1Kv2spOp2/33nMwFd0PiHadqY3jfOmmWLuoIG+VWgaq6lDhw3YBgzY5s/nC2mnnLmSd5lqZi1yZ861ZlqfYP/ssTmuAn1nkb2VMV2/itw6FtokOB55kRrHqxdx4krS6EQaDahZ1CSJJOqZFH4dLzlT/d+IlGhAz+FxqCSWMsfOnrwBBmwDBmwDBmwDBmwDBmwDBmzz9w0oUtHztOdFveq2gVxJbOfP/YpAWUMvXDm+t8K8YUG9+ao3r6E7dQ56iZN0QLlSV6Jp3YKf7Cn7kLQVw7Ey9rrhFRA2HBwTratTSZWsqmvcvSlNO1zXlUMLKdssrvW7dIYeAAAAkPwDfkZJZ3COraUAAAAASUVORK5CYII="),),
        )
      ],
    ),
    );
  }
}

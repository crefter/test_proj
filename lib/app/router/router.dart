import 'package:auto_route/auto_route.dart';
import 'package:test_proj/app/router/router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: HotelRoute.page,
          path: '/hotel',
          initial: true,
        ),
        AutoRoute(
          page: RoomsRoute.page,
          path: '/hotel/rooms',
        ),
        AutoRoute(
          page: BookingRoute.page,
          path: '/hotel/rooms/booking',
        ),
        AutoRoute(
          page: PaidRoute.page,
          path: '/hotel/rooms/booking/paid',
        ),
      ];
}

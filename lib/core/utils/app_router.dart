import 'package:go_router/go_router.dart';
import 'package:my_bookly/Features/home/presentation/views/book_details_view.dart';
import 'package:my_bookly/Features/home/presentation/views/home_view.dart';
import 'package:my_bookly/Features/search/presentation/views/search_view.dart';
import 'package:my_bookly/Features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBookDetails = '/bookDetails';
  static const kSearchView = '/searchView';
  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => const SearchView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kBookDetails,
        builder: (context, state) => const BookDetailsView(),
      ),
    ],
  );
}

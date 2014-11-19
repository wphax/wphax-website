# AngularJS
app = angular.module 'wphax', [ 'ngRoute', 'ngAnimate' ]

resolve = {
	delay: ( $q, $timeout ) ->
		jQuery '#headings h1, #headings h2, #headings p'
			.toggleClass 'ng-enter ng-leave'

		delay = $q.defer()
		$timeout delay.resolve, 400
		delay.promise
}

app.config ( $routeProvider ) ->
	$routeProvider
	.when '/', {
		templateUrl: 'home.html',
		resolve: resolve
	}
	.when '/about', {
		templateUrl: 'about.html',
		resolve: resolve
	}
	.when '/work', {
		templateUrl: 'work.html',
		resolve: resolve
	}
	.otherwise '/'
	return

# jQuery
(($) ->
	# jQuery here
) jQuery
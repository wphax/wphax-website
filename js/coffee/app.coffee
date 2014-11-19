# AngularJS
app = angular.module 'wphax', [ 'ngRoute', 'ngAnimate' ]

app.config ( $routeProvider ) ->
	$routeProvider
	.when '/', {
		templateUrl: 'home.html',
		resolve: {
			delay: ( $q, $timeout ) ->
				delay = $q.defer()
				$timeout delay.resolve, 500
				delay.promise
		}
	}
	.when '/about', {
		templateUrl: 'about.html',
		resolve: {
			delay: ( $q, $timeout ) ->
				delay = $q.defer()
				$timeout delay.resolve, 500
				delay.promise
		}
	}
	.when '/work', {
		templateUrl: 'work.html',
		resolve: {
			delay: ( $q, $timeout ) ->
				delay = $q.defer()
				$timeout delay.resolve, 500
				delay.promise
		}
	}
	.otherwise '/'
	return

# jQuery
(($) ->
	# jQuery here
) jQuery
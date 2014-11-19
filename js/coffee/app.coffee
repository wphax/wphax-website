# AngularJS
app = angular.module 'wphax', [ 'ngRoute', 'ngAnimate' ]

resolve = {
	delay: ( $q, $timeout ) ->
		jQuery '#headings h1, #headings h2, #headings p.quote, #headings .left, #headings .right'
			.toggleClass 'ng-enter ng-leave'

		delay = $q.defer()
		$timeout delay.resolve, 400
		delay.promise
}

app.controller 'HomeController', ( $scope, $routeParams ) ->
	$scope.quotes = [
		'"Either I will find a way, or I will make one." -Philip Sidney'
		'"Don\'t watch the clock; do what it does. Keep going." -Sam Levenson'
		'"Expect problems and eat them for breakfast." -Alfred A. Montapert'
		'"Without hard work, nothing grows but weeds."" -Gordon B. Hinckley'
		'"Quality is not an act, it is a habit." -Aristotle'
		'"Do something wonderful, people may imitate it." -Albert Schweitzer'
		'"The most effective way to do it, is to do it." -Amelia Earhart'
	]
	$scope.randomQuote = $scope.quotes[ Math.floor Math.random() * $scope.quotes.length ]
	return

app.config ( $routeProvider ) ->
	$routeProvider
	.when '/', {
		templateUrl: 'home.html'
		controller: 'HomeController'
		resolve: resolve
	}
	.when '/about', {
		templateUrl: 'about.html'
		resolve: resolve
	}
	.when '/work', {
		templateUrl: 'work.html'
		resolve: resolve
	}
	.otherwise '/'
	return

# jQuery
(($) ->
	# jQuery here
) jQuery
app = angular.module 'store', [ 'ngRoute', 'ngAnimate' ]

app.controller 'storeController', ->
	this.pages = pages
	return

app.config ( $routeProvider ) ->
	$routeProvider
	.when '/', { templateUrl: 'home.html' }
	.when '/about', { templateUrl: 'about.html' }
	.when '/work', { templateUrl: 'work.html' }
	return
var app = angular.module("bp-spike", ['ngResource']);

app.config(function($routeProvider) {
	$routeProvider
		.when('/', {
			templateUrl: "../assets/search.html",
			controller: "SearchCtrl"
		})
		.when('/listings', {
			templateUrl: "../assets/listings.html",
			controller: "ListingsCtrl"
		})
		.when('/new-listing', {
			templateUrl: "../assets/new-listing.html",
			controller: "NewListingCtrl"
		});
});

app.factory('Property', ['$resource', function($resource) {
	return $resource('/api/v1/properties/:id', {id: '@id'}, {'query':  {method:'GET', isArray:false}});
}]);






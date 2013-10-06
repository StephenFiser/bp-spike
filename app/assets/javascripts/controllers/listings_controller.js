angular.module('bp-spike').controller("ListingsCtrl", ['$scope', 'Property', function($scope, Property) {
	$scope.test = "hey there";

	$scope.data = Property.query({}, function(response) {
		console.log(response);
	});
	

}]);
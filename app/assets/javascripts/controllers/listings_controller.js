angular.module('bp-spike').controller("ListingsCtrl", ['$scope', 'Property', function($scope, Property) {
	$scope.test = "hey there";

	$scope.show = false;
	$scope.ml = "More";

	$scope.data = Property.query({}, function(response) {
		console.log(response);
	});
	
	$scope.toggleShowHide = function(index) {
		setToFalse($scope.data.properties, index);
		var property = $scope.data.properties[index];
		console.log(index);
		if (property.show == false) {
			property.ml = "Less";
		} else {
			property.ml = "More";
		}
		property.show = !property.show;

	}

	var setToFalse = function(set, index) {
		$.each(set, function(i, obj) {
			if (i != index) {
				if (obj.show == true) {
					obj.show = false;
					obj.ml = "More";
				}
			}
		});
	}

}]);
angular.module('bp-spike').controller("ListingsCtrl", ['$scope', 'Property', function($scope, Property) {
	$scope.test = "hey there";

	$scope.show = false;
	$scope.ml = "More";
	$scope.checkTest = 0;
	$scope.filterDetails = [];
	$scope.currentDetail = null;

	$scope.details = [{title: "Swimming Pool", checked: false}, {title: "Big Backyard", checked:false}, 
	{title: "Open Floor Plan", checked: false}, {title: "Downtown", checked: false}, {title: "Suburbs", checked: false}, 
	{title: "Pet Friendly", checked: false}, {title: "Charming", checked: false}, 
	{title: "Recently Built", checked: false}];

	$scope.simpleDetails = [];

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

	$scope.detailFilter = function(property) {
		if ($scope.checkTest > 0) {
			console.log("Property details: " + property.details);
			console.log("Filter details: " + $scope.filterDetails);
			console.log(intersection(property.details, $scope.filterDetails));
			if (intersection(property.details, $scope.filterDetails).length > 0) {
				return property;
			}
		} else {
			return property;
		}
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

	function intersection(array1, array2) {
		var intersection = []
		$.each(array1, function(i, element) {
			if ($.inArray(element, array2) > -1) {
				intersection.push(element);
			}
		});
		return intersection;
	}

	$scope.filterBy = function() {
		$scope.filterDetails = [];
		$scope.checkTest = 0;
		$.each($scope.details, function(i, obj) {
			if (obj.checked == true) {
				$scope.checkTest++; 
				$scope.filterDetails.push(obj.title);
			}	
		});
	}

	$scope.compare = function(a,b) {
	  if (a.title < b.title)
	     return -1;
	  if (a.title > b.title)
	    return 1;
	  return 0;
	}

}]);
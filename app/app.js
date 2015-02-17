//Define an angular module for our app
var app = angular.module('myApp', []);

app.controller('CollectionsController', function($scope, $http) {
	getCollections(); // Load all available collections 
	function getCollections(){  
		$http.post("ajax/getCollections.php").success(function(data){
			$scope.collections = data;

		});
	};
});

app.filter('startFrom', function() {
 return function(input, start) {
 if(input) {
 start = +start; //parse to int
 return input.slice(start);
 }
 return [];
 }
});
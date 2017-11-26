define('love.index', function (require) {
	var app = angular.module('indexApp', []);
	app.controller('indexCtrl', function($scope, $http) {
		$scope.fn = {};
		$scope.base = {};
		
		$scope.fn.login = function () {
			var userInfo = {
				userAccount : $scope.base.userAccount,
				userPassword : $scope.base.userPassword
			}
			var url = 'http://localhost:8080/loginSys/login';
		    $http.post(url, userInfo).success(function(result) {  
		        //  
		    	console.log(23123);
		    });  
		}
	});
//	angular.bootstrap(document, ['indexApp']);
})

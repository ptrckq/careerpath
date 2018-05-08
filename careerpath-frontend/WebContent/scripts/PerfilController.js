
var app = angular.module('careerpath');

app.controller('PerfilController', ['$rootScope', '$http', function($scope, $http) {
	$http({
		method: "GET",
		url: "http://localhost:8080/careerpath-backend-0.1/dados/getPerfis"
	
	}).then(function (response){
		console.log(sessionStorage);
		$scope.perfis = response.data;
		console.log("Dados recebidos Controller Perfil!");
	});
}]);
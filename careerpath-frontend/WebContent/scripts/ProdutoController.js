var app = angular.module('careerpath');
app.controller('ProdutoController', ['$rootScope', '$http', function($scope, $http) {
	$http({
		method: "GET",
		url: "http://localhost:8080/careerpath-backend-0.1/dados/getProdutos"
	
	}).then(function (response){
		$scope.produtos = response.data;
		console.log("Dados recebidos NavController Produto!");
	});
}]);
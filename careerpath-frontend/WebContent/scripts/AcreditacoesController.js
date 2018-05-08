var app = angular.module('careerpath');

app.controller('AcreditacoesController', ['$rootScope', '$http', function($scope, $http) {
		$scope.acreditacoesAtivas = [];
	
		$http({
			method: "GET",
			url: "http://localhost:8080/careerpath-backend-0.1/dados/getAcreditacoes"
		
		}).then(function (response){
			$scope.acreditacoes = response.data;
			
		});
		
		$http({
			method: "GET",
			url: "http://localhost:8080/careerpath-backend-0.1/dados/getAcreditacoesProduto"
		
		}).then(function (response){
			$scope.acreditacoesProduto = response.data;

			});
		
		
		$scope.stateChangedPerfil = function(state) {
			
			if(state.isActive){
				var acreditacoes = $scope.acreditacoes.filter(function(elem){
			 return elem.perfil === state.nomePerfil;
			})
					acreditacoes.forEach(function (elem){
				$scope.acreditacoesAtivas.push(elem);
			})
		} else {
			$scope.acreditacoesAtivas = $scope.acreditacoesAtivas.filter(function(elem){
				return elem.perfil !== state.nomePerfil;
			})
		} 
		console.log($scope.acreditacoesAtivas);
			}
		
		
		$scope.stateChangedProduto = function(state) {
			console.log(state);
			if(state.isActive){
				var acreditacoes = $scope.acreditacoes.filter(function(elem){
					console.log(elem);
			 return elem.codigoProduto === state.codigoProduto;
			})
					acreditacoes.forEach(function (elem){
				$scope.acreditacoesAtivas.push(elem);
			})
		} else {
			$scope.acreditacoesAtivas = $scope.acreditacoesAtivas.filter(function(elem){
				return elem.idProduto !== state.idProduto;
			})
		} 
		console.log($scope.acreditacoesAtivas);
		}
}]);
/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
var app = angular.module('app', []);

app.factory('ns', function($http) {
    return {
        envio: null,
        altaPaciente: function(data) {
            return $http({
                method: 'POST',
                url: '/SPEYS/PacienteCitaServlet',
                data: this.envio,
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            }).success(data);
        }        
    };
});

app.controller('PacienteControllerAltaCita', function($scope, ns) {

    $scope.altaCita = function() {
        ns.envio = $.param({
            opcion: "1",
            observaciones: $scope.observaciones,
            pagoCheck: $scope.pagoCheck
        });
   
        ns.altaCita(function(data) {
          
            alert(data);
        });
    };

});



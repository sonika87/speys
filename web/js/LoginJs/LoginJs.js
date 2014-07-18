/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
var app = angular.module('app', []);

app.factory('ns', function($http) {    
    return {
        envio: null,
        
        iniciaSesion: function(data) {

            return $http({
                method: 'POST',
                url: '/SPEYS/LoginServlet',
                data: this.envio,
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            }).success(data);
        }
    };

});

/*Sesion*/
app.controller('sesionController', function($scope, ns) {
  

    $scope.iniciaSesion = function() {
        ns.envio = $.param({
            param01 : $scope.param001 ,
            param02  : $scope.param002
        });     
    
    ns.iniciaSesion(function(data) {     
         if(data == 'true'){
             location.href="/SPEYS/jsp/Perfil.jsp"          
          }else{
              alert('USUARIO INVALIDO');
          }
          
        });
        };

});

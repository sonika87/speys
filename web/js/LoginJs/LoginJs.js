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
        },
        consultaPacientes: function(data) {
            return $http.get('/SPEYS/PacienteServlet?opcion=1').success(data);
        }
        , altaPaciente: function(data) {
            return $http({
                method: 'POST',
                url: '/SPEYS/PacienteServlet',
                data: this.envio,
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            }).success(data);
        },
        consultaPaciente: function(data) {
            return $http({
                method: 'POST',
                url: '/SPEYS/PacienteServlet',
                data: this.envio,
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            }).success(data);
        }, editaPaciente: function(data) {
            return $http({
                method: 'POST',
                url: '/SPEYS/PacienteServlet',
                data: this.envio,
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            }).success(data);
        }, eliminaPaciente: function(data) {
            return $http({
                method: 'POST',
                url: '/SPEYS/PacienteServlet',
                data: this.envio,
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            }).success(data);
        }, consultaListaPacientes: function(data) {
            return $http.get('/SPEYS/PacienteServlet?opcion=6').success(data);
        }, consultaHistorialPacientes: function(data) {
            return $http({
                method: 'POST',
                url: '/SPEYS/PacienteServlet',
                data: this.envio,
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            }).success(data);
        },consultaHistoPaciente: function(data) {
            return $http({
                method: 'POST',
                url: '/SPEYS/PacienteServlet',
                data: this.envio,
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            }).success(data);
        }, editaCita: function(data) {
            return $http({
                method: 'POST',
                url: '/SPEYS/PacienteServlet',
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
            param01: $scope.param001,
            param02: $scope.param002
        });

        ns.iniciaSesion(function(data) {
            if (data == 'true') {
                location.href = "/SPEYS/jsp/Perfil.jsp"
            } else {
                alert('USUARIO INVALIDO');
            }

        });
    };

});

app.controller('PacienteControllerAlta', function($scope, ns) {

    $scope.altaPaciente = function() {
        ns.envio = $.param({
            opcion: "2",
            nombreP: $scope.nombreP,
            aPaterno: $scope.aPaterno,
            aMaterno: $scope.aMaterno,
            sexo: $scope.sexo,
            edad: $scope.edad,
            meses: $scope.meses,
            direccionP: $scope.direccionP,
            telefonoP: $scope.telefonoP,
            estadoCivilP: $scope.estadoCivilP,
            ciudadOrigenP: $scope.ciudadOrigenP,
            correoElecP: $scope.correoElecP,
            nivelEstudiosP: $scope.nivelEstudiosP,
            costoConsultaP: $scope.costoConsultaP
        });

        ns.altaPaciente(function(data) {

            alert(data);
        });
    };

});

app.controller('PacienteController', function($scope, ns) {

    ns.consultaPacientes(function(data) {
        console.log(data[0]);
        $scope.ListPacientes = data;
    });
    $scope.consultaPaciente = function(pacienteId) {
        ns.envio = $.param({
            opcion: "4",
            pacienteId: pacienteId

        });
        ns.consultaPaciente(function(data) {
            $scope.PacienteEdit = data[0];
            $("#myModal").modal("show");

        });
    };
    $scope.editaPaciente = function(PacienteEdit) {

        ns.envio = $.param({
            opcion: "3",
            pacienteId: PacienteEdit.pacienteId,
            nombreP: PacienteEdit.nombre,
            aPaterno: PacienteEdit.aPaterno,
            aMaterno: PacienteEdit.aMaterno,
            sexo: PacienteEdit.sexo,
            edad: PacienteEdit.anioEdad,
            meses: PacienteEdit.mesesEdad,
            direccionP: PacienteEdit.direccion,
            telefonoP: PacienteEdit.telefono,
            estadoCivilP: PacienteEdit.estadoCivil,
            ciudadOrigenP: PacienteEdit.ciudadOrigen,
            correoElecP: PacienteEdit.correoElectronico,
            nivelEstudiosP: PacienteEdit.nivelEstudios,
            costoConsultaP: PacienteEdit.costoConsulta
        });

        ns.editaPaciente(function(data) {

            alert(data);

            $("#myModal").modal('hide');
            location.href = "/SPEYS/jsp/ConsultaPacientes.jsp";
        });
    };

    $scope.eliminaPaciente = function(pacienteId) {
        ns.envio = $.param({
            opcion: "5",
            pacienteId: pacienteId

        });
        ns.eliminaPaciente(function(data) {
            alert(data)
            location.href = "/SPEYS/jsp/ConsultaPacientes.jsp";


        });
    };

});
app.controller('consultaPacientesController', function($scope, ns) {
    ns.consultaListaPacientes(function(data) {
        console.log(data[0]);
        $scope.ListaPacientes = data;
    });

    $scope.consultaHistorialPacientes = function(pacienteId) {
        ns.envio = $.param({
            opcion: "7",
            pacienteId: pacienteId

        });
        ns.consultaHistorialPacientes(function(data) {
            $scope.datosPersonales = data[0];
            $scope.listaHist = data;

        });
    };
    
    $scope.consultaHistoPaciente = function(pacienteId) {
       
        ns.envio = $.param({
            opcion: "8",
            pacienteId: pacienteId

        });
        ns.consultaHistoPaciente(function(data) {
       $scope.PacienteHistoEdit = data[0];
            $("#myModal").modal("show");

        });
    };
    
    
     $scope.editaCita = function(PacienteHistoEdit) {

        ns.envio = $.param({
            opcion: "9",
            citaId: PacienteHistoEdit.id_cita,
            statusP: PacienteHistoEdit.pago_cita,
            obserP: PacienteHistoEdit.observaciones_cita         
        });

        ns.editaCita(function(data) {

            alert(data);

            $("#myModal").modal('hide');
            location.href = "/SPEYS/jsp/Perfil.jsp";
        });
    };
});

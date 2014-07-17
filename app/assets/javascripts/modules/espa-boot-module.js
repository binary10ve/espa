'use strict';
angular.module('Espa',
  [
  'ngRoute',
  'RequestConfigCnst',
  'RoutesConfigMD'
  ])
.config( [ '$routeProvider', 'RoutesConfig',  function( $routeProvider, RoutesConfig ) {

  RoutesConfig.routes.forEach( function( config ){
    $routeProvider.when( config.url, {
      templateUrl : config.templateUrl,
      controller : config.controller
    });
  });

  $routeProvider.otherwise({
    redirectTo: RoutesConfig.defaultRoute
  });

}]).run([ '$rootScope', '$http', function($rootScope, $http){ 
  

}]);
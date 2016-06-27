(function(){

  "use strict";

  angular.module("app").controller("teamsCtrl", function($scope,$http) {

    $scope.setup = function() {
      $http.get("/api/teams.json").then(function(response){
        $scope.teams = response.data;
        console.log(response)
      });
    };

    $scope.addTeam = function(teamName, teamCreature, teamState, teamSport) {
      var newTeam = {
        name: teamName,
        creature: teamCreature,
        state: teamState,
        sport: teamSport
      };
      $http.post("/api/teams.json", newTeam).then(function(response){
        $scope.teams.push(response.data);
        $scope.teamName = '';
        $scope.teamCreature = '';
        $scope.teamState = '';
        $scope.teamSport = '';
        $scope.errors = [];
      },
        function(error) {
          $scope.errors = error.data.errors;
        });
    };

  });

}());
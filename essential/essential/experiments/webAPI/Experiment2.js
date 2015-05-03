﻿var app = angular.module("WeatherApp", []);

app.controller("WeatherController", function ($scope, $http) {
    $scope.visible = false;
    $scope.searchCity = function () {
        var city = $scope.searchByCity;
        $http.get("http://api.worldweatheronline.com/premium/v1/weather.ashx?num_of_days=3&q=" + city + "&tp=24&format=json&key=36c06e6c39199fdbb6b6ce4057719")
        .success(function (response) {
            $scope.city = {
                currentcondition: response.data.current_condition[0],
                today: response.data.weather[0],
                tomorrow: response.data.weather[1],
                cityname: response.data.request[0].query,
            }
            $scope.visible = true;
            console.log($scope.city.today.astronomy[0].sunset)

        })
    }

});
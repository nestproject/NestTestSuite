Feature: Basic Nest compliance

    Scenario: Performing a simple GET request
         When I make a GET request to /hello
         Then I should have a 200 response

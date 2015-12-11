Feature: Basic Nest compliance

    Scenario: Success response status code
         When I make a GET request to /hello
         Then I should have a 200 response

    Scenario: Response header
         When I make a GET request to /hello
         Then I should see the header 'Content-Type' with the value 'text/plain'

    Scenario: Response body
         When I make a GET request to /hello
         Then The contents of the body should be 'Hello World'


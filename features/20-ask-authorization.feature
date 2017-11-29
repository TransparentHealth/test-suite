@use.with_use_case=security @smart @ask-authorization
Feature: App asks for authorization

    Scenario: Missing "response_type"
        Given OAuth is enabled
        And I am not logged in
        When I ask for authorization without the response_type field
        Then the response code should not be 200

    Scenario: Wrong "response_type"
        Given OAuth is enabled
        And I am not logged in
        When I request authorization with the following override
            | key | value |
            | response_type | token |
        Then the response code should not be 200

    Scenario: Missing "client_id"
        Given OAuth is enabled
        And I am not logged in
        When I ask for authorization without the client_id field
        Then the response code should not be 200

    Scenario: Wrong "client_id"
        Given OAuth is enabled
        And I am not logged in
        When I request authorization with the following override
            | key | value |
            | client_id | example |
        Then the response code should not be 200

    Scenario: Missing "redirect_uri"
        Given OAuth is enabled
        And I am not logged in
        When I ask for authorization without the redirect_uri field
        Then the response code should not be 200

    Scenario: Wrong "redirect_uri"
        Given OAuth is enabled
        And I am not logged in
        When I request authorization with the following override
            | key | value |
            | redirect_uri | https://example.com |
        Then the response code should not be 200

    Scenario: Missing "scope"
        Given OAuth is enabled
        And I am not logged in
        When I ask for authorization without the scope field
        Then the response code should not be 200

    Scenario: Missing "state"
        Given OAuth is enabled
        And I am not logged in
        When I ask for authorization without the state field
        Then the response code should not be 200

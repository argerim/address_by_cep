Feature: Address By Cep
  In order to manage address resources
  As a rails developer
  I want to generate model for address

  Scenario: Generate model and migration for address
    Given a new Rails app
    Then I should see "address_by_cep:models" when running "rails g"
    When I run "rails g address_by_cep:models"
    Then I should see the following files
      | app/models/address.rb                          |
      | db/migrate                                     |
      | app/views/addresses/_addressable_form.html.erb |
    And I should successfully run "rake db:migrate"
# spec/acceptance/process_commands.feature
Feature: Processing commands for the robot
  Background:
    Given we initialized the application
    And a table of 5 units wide by 5 units high
    And we run the application

  Scenario: Moving
    When we send the command "PLACE 0,1,NORTH"
    And we send the command "MOVE"
    And we send the command "REPORT"
    Then we should see "0,2,NORTH"
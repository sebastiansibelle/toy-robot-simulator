# spec/acceptance/process_commands.feature
Feature: Processing commands for the robot
  Background:
    Given we initialized the simulator

  Scenario: Moving
    When we send the command "PLACE 0,1,NORTH"
    And we send the command "MOVE"
    And we send the command "REPORT"
    And we run the simulator
    Then we should see "0,2,NORTH"
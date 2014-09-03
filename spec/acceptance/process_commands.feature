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

  Scenario: Turning
    When we send the command "PLACE 0,0,NORTH"
    And we send the command "LEFT"
    And we send the command "REPORT"
    And we run the simulator
    Then we should see "0,0,WEST"

  Scenario: Moving and turning
    When we send the command "PLACE 1,2,EAST"
    And we send the command "MOVE"
    And we send the command "MOVE"
    And we send the command "LEFT"
    And we send the command "MOVE"
    And we send the command "REPORT"
    And we run the simulator
    Then we should see "3,3,NORTH"

  Scenario: Never placed on the board
    When we send the command "MOVE"
    And we send the command "LEFT"
    When we send the command "MOVE"
    And we send the command "REPORT"
    And we run the simulator
    Then we should see "unplaced"

  Scenario: Placed off the table
    When we send the command "PLACE 6,6,EAST"
    And we run the simulator
    Then we should see "unplaced"
# spec/acceptance/simulate_movement.feature
Feature: Simulating movement of the robot
  Background:
    Given a table of 5 units wide by 5 units high

  Scenario: Moving north
    Given a robot placed at 0,0 facing north
    When the robot moves
    Then the robot should be at 0,1 facing north

  Scenario: Preventing robot from falling
    Given a robot placed at 4,4 facing north
    When the robot moves
    Then the robot should be at 4,4 facing north

  Scenario: Placing a robot off the table
    Given a robot
    When a robot placed at 4,5 facing north
    Then the robot should not be placed

  Scenario: Turning right
    Given a robot placed at 0,0 facing north
    When the robot turns right
    Then the robot should be at 0,0 facing east

  Scenario: Turning left
    Given a robot placed at 0,0 facing north
    When the robot turns left
    Then the robot should be at 0,0 facing west
# spec/acceptance/simulate_movement.feature
Feature: Simulating movement of the robot
  Background:
    Given a table of 5 units high by 5 units wide

  Scenario: Moving north
    Given a robot placed at 0,0 facing north
    When the robot moves
    Then the robot should be at 0,1 facing north

  Scenario: Preventing robot from falling
    Given a robot placed at 5,5 facing north
    When the robot moves
    Then the robot should be at 5,5 facing northg
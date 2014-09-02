# spec/acceptance/process_commands.feature
Feature: Processing commands for the robot
  Background:
    Given a table of 5 units wide by 5 units high

  Scenario: Moving
  When the command "PLACE 0,1,NORTH" is issued
  And the command "MOVE" is issued
  And the command "REPORT" is issued
  Then I should see "0,2,NORTH"
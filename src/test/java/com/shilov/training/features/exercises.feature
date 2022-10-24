Feature: implementation of exercises from uitestingplayground.com

  @DynamicId
  Scenario: click button with dynamic id
    Given dynamic id exercise page is opened
    Then user clicks button with dynamic id

  @ClassAttribute
  Scenario: click button by class attribute
    Given class attribute exercise page is opened
    When user clicks button by class attribute
    Then alert with text "Primary button pressed" appeared

  @HiddenLayer
  Scenario: click button on hidden layer
    Given hidden layer exercise page is opened
    When user clicks green button
    Then user clicks overlapping button

  @LoadDelay
  Scenario: click button after load delay
    Given load delay exercise page is opened
    Then user clicks button appearing after delay

  @AJAXData
  Scenario: get text from element appeared after ajax request
    Given ajax data exercise page is opened
    When user clicks ajax request trigger button
    Then text of appeared element should be "Data loaded with AJAX get request."

  @ClientSideDelay
  Scenario: get text from element appeared after side delay
    Given client side delay exercise page is opened
    When user clicks delay client side trigger button
    Then text of appeared after client side delay element should be "Data calculated on the client side."

  @Click
  Scenario: click on button that ignores DOM click event
    Given click exercise page is opened
    When user clicks button that ignores DOM click event
    Then button that ignores DOM click event should change color to "#28a745"

  @TextInput
  Scenario Outline: input new name of button and apply it
    Given text input exercise page is opened
    When user enters new button name "<button name>"
    And user applies name
    Then button name should be changed to "<button name>"

    Examples:
    |button name|
    |test       |
    |new name   |
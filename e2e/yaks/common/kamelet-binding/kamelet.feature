Feature: Camel K can bind Kamelets

  Scenario: Running integration using a simple Kamelet with KameletBinding
    Given integration logger-sink-binding is running
    Then integration logger-sink-binding should print message: Hello Kamelets

  Scenario: Binding to a HTTP URI should use CloudEvents
    Given integration display is running
    Then integration display should print type: org.apache.camel.event
    Then integration display should print Hello

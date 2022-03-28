# Menu_Management
Popmenu SE Internship Assessment

## Requirements:
##### Level 1: Basics
  - Create an object model for Menu and MenuItem s classes
  - Menu has many MenuItem s
  - Menu and MenuItem have typical data associated with restaurants
  - Illustrate behavior via unit tests 
  
##### Level 2: Multiple Menus
  - Introduce a Restaurant model, and allow Restaurant s to have multiple Menu s MenuItem names should not be duplicated in the database
  - MenuItem can be on multiple Menu s of a Restaurant
  - Illustrate behavior via unit tests 
  
##### Level 3: Complex Menu Items
  - Extend the object model to enable the following behavior:
    - A diner can order a dinner salad one of two ways: 
      - As a standalone dish, with selection of dressing 
      - As a side of an entree, with selection of dressing
    - A diner can order a side of any dressing with any appetizer or entree
  - Illustrate this behavior with unit tests 
  
##### Level 4: Fred and Fran like Fish on Fridays
  - This is a bonus! We'd love to talk about your solution if you think it's a fun problem
  - Design and implement a prediction engine that predicts: 
    - The likelihood of a customer dining on a particular day 
    - What dish they are most likely to order

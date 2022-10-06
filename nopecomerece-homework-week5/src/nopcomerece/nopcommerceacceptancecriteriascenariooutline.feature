Feature: : Bookcategory

  Background: I should be able to se homepage
    Given I enter URL " https://demo.nopcommerce.com/" in browser
    And I am on home page

  Scenario Outline: I should be able to see top menu tabs on homepage with categories
    When I am on home page
    Then i should be able too see top menu tabs with "<categories>"
    Examples:

      | categories        |
      | computer          |
      | Electronic        |
      | Apparel           |
      | Digital downloads |
      | books             |
      | Jewellery         |
      | Gift card         |

  Scenario Outline: I should be able to see book page with filters
    When I select book category from top menu tabs on home page
    Then I should be navigated to book category
    And I should be able to see "<filters>"

    Examples:
      | filters  |
      | short by |
      | display  |
      | the grid |
      | list tab |

  Scenario Outline: I should be able too see list of terms of eath filter
    Given I am on book page
    When I click on
    Then I should be able to see "<list>" in dropdon menu
    Examples:
      | filter   | list                                                                               |
      | Short by | Nmae : A to Z,name : Z to A, price : Low to High , price : High to Low, Created on |
      | display  | 3,6,9                                                                              |

  Scenario Outline: I should be able to choose any filter option with specific result
    Given I am on book page
    When  I click on "<filter>"
    And  I click on any "<option>"
    Then I should be able to choose any filter option from the list
    And I should be able to see "<result>"

    Examples:
      | Filter  | option              | result                                                            |
      | Sort by | Name: A to Z        | sorted product with the product name in alphabetical order A to Z |
      | Sort by | Name : Z to A       | sorted product with the product name in alphabetical order Z to A |
      | sort by | Price : low to high | sorted product with the price in descending order                 |
      | sort by | Price : high to low | sorted product with the price in ascending order                  |
    | sort by | created on          | recently added product should be show first                       |
    | display | 3                   | 3 products in a page                                              |
    |display  | 6                   | 6 products in a page                                              |
    |display  |9                    | 9 products in a page                                              |

    Scenario Outline:  i should be able to see product display format according display format type as per given picture in srs document
      Given i am on book page
      When I a click on "< display format icon>"
      Then I should be able to see prodcut display format type as per given picture in SRS document
      Examples:
      | display form icon |
      | Grid              |
      | List              |


Feature: Merge Articles 
  As a blog administrator
  In order to gift my thoughts to the world
  I want to merge existing articles 

  Background:
    Given the blog is set up
    And I am logged into the admin panel
		
  Scenario: An admin can merge articles
    Given I am on the all articles page
	When I follow "Edit"
	Then I should see "New article"
	And I should see "Merge Articles"
    # And I go to edit existing article page 

  Scenario: A non-admin cannot merge articles
    Given I am on the new article page

  Scenario: When articles are merged, the merged article should contain the text of both previous articles
    Given I am on the new article page
  
  Scenario: When articles are merged, the merged article should have one author
    Given I am on the new article page

  Scenario: Comments on each of the two original articles need to all carry over and point to the new, merged article
    Given I am on the new article page

  Scenario: The title of the new article should be the title from either one of the merged articles
    Given I am on the new article page
		
  Scenario: The form field containing the ID of the article to merge with must have the HTML attribute name set to merge_with
    Given I am on the new article page


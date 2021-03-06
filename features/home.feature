Feature: Jobs page

Background:
  Given I go to the jobs page

Scenario: Jobs page renders correctly
  Then I should see the "Home" page

Scenario Outline: Jobs page components check.
  Then I should see the <element>
  Examples:
  | element |
  | "navigation bar" |
  | "search fields" |
  | "sector lists" |
  | "jobs blog" |
  | "featured jobs" |
  | "footer" |

Scenario Outline: Check that links on the jobs page go to correct pages.
  When I click on <link>
  Then I should see the <page> page
  Examples:
  | link                  | page |
  | "Sign in"             | "Sign in" |
  | "Create account"      | "Create account"  |
  | "Home"                | "Home"  |
  | "Find a job"          | "Find a job"  |
  | "Job alerts"          | "Job alerts"  |
  | "Search recruiters"   | "Search recruiters"  |
  | "Jobs blog"           | "Jobs blog" |
  | "Banking and finance" | "Banking and finance" |


Scenario Outline: Check that links on the jobs page's footer go to correct pages.
  When I click on footer link <link>
  Then I should see the <page> page
  Examples:
  | link                  | page          |
  | "About Us"            | "About Us"    |
  | "Contact Us"          | "Contact Us"  |
  | "Terms & Conditions"  | "Terms & Conditions"  |
  | "Privacy Policy"      | "Privacy Policy"  |
  | "Advertise with us"   | "Advertise with us"  |

Scenario: Search for a job on the home page
  When I enter "Director" in the search box
  And I click on the Search button
  Then relevant search results are displayed

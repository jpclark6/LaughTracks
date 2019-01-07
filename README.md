## Laugh Tracks

This was a solo learning project for week 7 of the Backend program at Turing. The goal was to create a simple dynamic website using Sinatra, an open source web app framework and DSL written in Ruby. The app displays information about comedians and some specials they have. Some of the learning goals were to implement a basic MVC structure, start learning the testing framework RSpec, begin learning ActiveRecord with PostgreSQL, and begin learning the basics of HTML and CSS.

It can save and load data from the database, display the information using .erb files (embedded ruby with HTML), and also has testing for both the model and feature level.

Here are some screenshots of the index and show pages.

![index](https://github.com/jpclark6/LaughTracks/blob/master/readme%20assets/index-page.png)
![show](https://github.com/jpclark6/LaughTracks/blob/master/readme%20assets/show-page.png)

## Setup

If you would like to set up the app make sure you have the basic Ruby requirements, and then run the following terminal commands.

```
bundle install
bundle update

rake db:{create,migrate,seed}

shotgun
```

## Testing

To run the tests run the following from the terminal.

```
rspec
```

## User Stories

This is a list of user stories required for the project.

```
User Story 1

As a visitor
When I visit `/comedians`
Then I see a list of comedians with the following
information for each comedian:
  * Name
  * Age
  * City

- You may use any internet site to fetch this information to put into your database
- The city attribute can hold birthplace or current known hometown.
- For testing, you should ensure that the name, age and city only appear on a
  specific area of the page for that single comedian.
- Minimum of 12 comedians on the page.
```

```
User Story 2

As a visitor
When I visit `/comedians`
Then I also see a list of each comedian's TV specials' names

- You may find this information on IMDB.com and other related sites.
- Your project does not need to include *every* special the comedian has ever made.
```

```
User Story 3

As a visitor
When I visit `/comedians`
Where I see a list of each comedian's TV specials' names,
I also see each special's run-time length in minutes, and a thumbnail image.

- Image locations (URLs) can be stored in the database as a string.
- Use the image URLs from IMDB or other online source for the special
- Use CSS styling to scale the image smaller if needed to fit on the page
```

```
User Story 4

As a visitor
When I visit `/comedians`
Then I see an area at the top of the page called 'Statistics'
In that 'Statistics' area, I see the following information:
- the average age of all comedians on the page
- the average run length of every TV special on the page
- a unique list of cities for each comedian on the page

Averaging and uniqueness should be done in ActiveRecord NOT
using Ruby
```

```
User Story 5

As a visitor
When I visit `/comedians?age=34`
Then I see the list of comedians on the page only shows
comedians who match the age criteria.

- All other information on the page is still expected to be present
- Testing should check that excluded comedians do not show up.
```

```
User Story 6

As a visitor
When I visit `/comedians`
For each comedian, I see a count of their TV specials
and the Statistics area on the page should list a total count
of TV specials for every comedian.
```

```
User Story 7

As a visitor
When I visit `/comedians?age=34`
Then I see a list of all comedians with an age of 34
Just like a previous User Story, BUT all other statistics
information in the 'Statistics' area of the page should be limited
to reflect only the information about the comedians listed on
the page.

- Testing should ensure that calculated statistics are
  correct for a limited subset of data
```

```
User Story 8

As a visitor
When I visit `/comedians/new`
Then I see a form to input a new comedian into the database
Including fields for their name, age and city.
When the form is successfully submitted and saved,
Then I am redirected to `/comedians`
And I see the new comedian's data on the page.
```

## Extensions

```
As a user, when I visit `/comedians`,
I see all previous information
And each comedian's name is a link to a page that only shows
that comedian's information and TV specials.

For example, comedian #4 in your database would have a page like
`/comedians/4`

- Testing should check that only this one comedian's information
  is on the page.
```

```
As a user, when I visit `/comedians?sort=name`
Then I see all previous information, but all comedians are
sorted alphabetically by the name of the comedians.
```

```
As a user, when I visit `/comedians?sort=city`
Then I see all previous information, but all comedians are
sorted alphabetically by the name of their city.
```

```
As a user, when I visit `/comedians?sort=age`
Then I see all previous information, but all comedians are
sorted alphabetically by the age of the comedian.
```

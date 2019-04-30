# iCasei Back-End Test

This is an Ruby on Rails application that allows us to see the simplicity and productivity of Rails with the usability of Javascript ES6.

## Prerequisites

To run this application you will need the following versions on your machine.

- Ruby 2.5.3 or greater
- Rails 5.2.2 or greater
- PostgreSQL 10.7 or greater

You can have those 3 at this webpage https://gorails.com/setup/ubuntu/18.10 there are a few steps to go for each OS, choose yours and install follow their instructions.

## Installing

Make sure you have the minimum required version of Ruby, Ruby on Rails and PostgreSQL.

Clone the repository:
```
$ git clone git@github.com:hmdros/iCChallenge.git
```
Open the folder you just cloned:
```
$ cd iCChallenge/
```
Install all gem dependencies:
```
$ bundle install
```
Install webpack:

```
$ yarn install
```

Create the database:
```
$ rails db:create
```
Run the migrations:
```
$ rails db:migrate
```
## Running the tests

Run the local server:
```
$ rails server
```
or
```
$ rails s
```
Open your browser and go to the address ```'localhost:3000'```, you should be in the application's home page.


## Navigation

Once you are in the application's home page, you can navigate thru the navbar at the top of the page and go to 'About' page, 'Contact' page and the 'Informations' page.

At the 'Contact' page you will see a form asking for a Contact's name and e-mail. You can fill it and it will bring to the application's DB your contact's informations.

At the 'Informations' page you will see log of the latest 50's navigotion thru this application.

```
### UUID  URL Data | Hora
1 b30432e3-3aa7-48d1-bc98-7d69113394b8  @http://localhost:3000/ 30/04/2019 10:29:34 Show
```


## Tests

### Manual Testing

You can run in the terminal

```
$ rails db:seed
```
To get seeds for contacts. You can check them at the page ```localhost:3000/contacts```.


### Automated Testing

This part will test:
The creation of contacts.
The existence of home page.
The existence of informations from navigation.

```
$ rails test:system
```

This part will test:
The model for contacts.
The model for guests.

```
$ rails test:models
```

This part will test:
The controllers for actions:
Contacts - New, Index and Show
Guests - Index and Show
Home Page - Index and About

```
$ rails test:controllers
```


OR

To run all those 3 tests

```
$ rake
```


You should see in your terminal green points if the tests are okay.


# Thanks

A special thanks to the iCasei team for allowing me to participate in this test. I hope I can contribute more to the team soon.

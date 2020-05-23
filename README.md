# OurAirports

This Rails application displays information about large airports provided by OurAirports (at http://ourairports.com/data/).

My hope is to make it a very convenient tool for exploring the airport information, including searching, sorting, and geographical features (e.g. show the airports within x miles of a given latitude/longitude).

The project home is on Github at https://github.com/keithrbennett/our_airports.

The application can be found at https://glacial-basin-20109.herokuapp.com/.

2020-05-22: In order to save Heroku charges, I am disabling this app using:

```
heroku ps:scale web=0
```

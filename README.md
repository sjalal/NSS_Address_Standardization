[![Code Climate](https://codeclimate.com/github/sjalal/NSS_Address_Standardization.png)](https://codeclimate.com/github/sjalal/NSS_Address_Standardization)
NSS-Address-Standardization

Purpose
This is my Capstone project for Nashville Software School Software Development Fundamentals course.
The constraints of the project are that they must use standard library Ruby with the exception of being able to use ActiveRecord as an ORM. Future exceptions may be added, but the concept with this capstone is to demonstrate mastery of Ruby itself.
The goal of this project is to Standardize the addresses thru Google map API and make them easier to compare. 
Project Status / TODO
This project is currently in the planning stages. However the simplest way to get started is to use APIs already on the internet, such as Google Maps, Yahoo Maps and others. There are a number of language specific APIs available to make this task easier (e.g. the Ruby Geocoder Gem).  

Features
The main features of the Address Standardization will be that stores and compares street addresses

Usage Instructions
Planned usage is as follows:
To add a new address:
> sa add "My new address"
To view the list of all existing address:
> sa list
To remove a new address:
> sa remove "My new address"
To start working through your address:
> sa start
When the address normalization is  complete, you will be prompted to move on to add another address ('n'), or quit ('q')
While working through tasks, press:
*  'n' to start normalize/standardize the next address 
*  'q' to quit (exit the program)

Demo
To demo the app, you'll have to download it and try it yourself.

Known Bugs
The great joy of having no code is having no bugs, no?
j/k. Requirements bugs are everywhere.

Author
Shah Jalal

Changelog
5/9/2013 - Created initial repository with README and user stories, as per the assignment for 5/10

License
Copyright (c) 2013 Shah Jalal
Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

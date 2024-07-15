## Medium Answers

#### Describe these data types. What are their similarities and differences? We aren't looking for a perfect comparison matrix, just discuss what's interesting and useful about each type. (this list uses terminology from ruby): Array, Enumerable, Hash, Object, Set, String

An array is a list of elements in order. It is useful for storing data when the order matters and for retrieving elements by their place in order.
 
An enumerable is a set of elements that can be iterated upon. Numerals include arrays, hashes, sets, and strings and allows for operations to happen to every element in the data structure.

A hash is an unordered set of key value pairs. It is useful for retrieving data by a named key instead of by order.

An object is an instance of a class. Classes and objects allow for customized data structures to store and retrieve data in the context of a larger application.

A set is a collection of unique elements. It is built on top of hashes, and allows for array comparison method while also allowing for quick lookups.

A string is a set of characters. It is a fundamental data structure for storing human readable data.

#### Describe these functions, and how some of them relate to one another (this list uses terminology from ruby): find_all, map, reduce, reject

In Ruby, find_all is a method that runs on an enumerable and accepts a block as an argument, and returns all elements in the enumerable that return true from the block. For example, as a way of checking for even numbers, [1, 2, 3, 4, 5].find_all { |n| n % 2 == 0 } would return [2, 4]

In Ruby, map is a method that runs on an enumerable and accepts a block as an argument, and returns a new enumerable that is modified by the block. For example, to double all numbers in an array, [1, 2, 3, 4, 5].map { |n| n * 2 } would return [2, 4, 6, 8, 10].

In Ruby, reduce is a method that runs on an enumerable and accepts a block and a variable as an argument, and returns the combination of all elements in the enumerable using the block.  For example, to sum all numbers in an array, [1, 2, 3, 4, 5].reduce { |sum, n| sum + n } would return 15.

In Ruby, reject is a method that runs on an enumerable and accepts a block as an argument, and returns all elements in the enumerable that return false from the block. It is the inverse of find_all.  For example, as a way of checking for not even numbers, [1, 2, 3, 4, 5].reject { |n| n % 2 == 0 } would return [1, 3, 5].

#### Describe why React is useful, and any thoughts on pros or cons you might have.

One benefit of using React is it is a ubiquitous and widely used framework. This means that there is a large ecosystem of third party packages available, as well as many resources for helping develop React code. Additionally, many developers have experience with React, meaning that getting team members up to speed is quicker than with other frameworks.

Another benefit of React is that it uses a virtual DOM to make changes to the page. First, the changes are made to the virtual DOM, then it checks the virtual DOM to the real DOM and only makes changes that are not already applied to the real DOM, resulting in a more performant web page.

Many people favor React’s framework of component based architecture as well, breaking apart different pieces of the front end into components for code organization and modularity.

#### If you wanted to improve the performance of a web app you were working on, what are some things you would look at / try?

If I wanted to improve the performance of a web app I was working on, there are a number of actions I would take.

First I would start by identifying any specific pages or actions that were performing poorly. I would look at application performance monitoring tools to find any pages or actions that were performing poorly. From there, I would visit those pages to reproduce the issue. I would open the network tab to further identify the issue and see any network responses that were taking a long time to respond (1 second or more).

If I noticed that a server action was taking a long time, I would examine the stack trace of the request and response, breaking down each step of what the server was doing. I would look at how the request was being handled, how the server was grabbing data, and how the view was being rendered. Another possible area to examine would be long running server operations that blocked HTTP responses and seeing if those would be able to be moved to background jobs and would be not blocking the response.

If the issue was not on the server but on the client side, I would run a Lighthouse diagnostics test to help identify any issues like non-minified code, uncompressed images, excessive font libraries, or other possible factors that may be leading to a slow page load time.

By starting at a high level and diving deep into potential problem areas, we can diagnose and remedy parts of the application that are performing slowly.

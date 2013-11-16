#!/bin/bash

## npm packages

#apt-get install node
# or install from downloading from nodejs.org

npm config set cache "C:\\dev\\.npm"
npm config set prefix "C:\\dev\\tools\npm"

# clean cache
npm cache clean

# npm packages
npm install -g karma
npm install -g yo
npm install -g request          # Simplified HTTP request client. 
npm install -g grunt            # The JavaScript Task Runner 
npm install -g socket.io        # Real-time apps made cross-browser & easy with a WebSocket-like API 
npm install -g underscore       # JavaScript's functional programming helper library. 
npm install -g redis            # Redis client library 
npm install -g coffee-script    # Unfancy JavaScript 
npm install -g jshint           # Static analysis tool for JavaScript 
npm install -g uglify-js        # JavaScript parser, mangler/compressor and beautifier toolkit 
npm install -g bower            # The browser package manager. 
npm install -g requirejs        # Node adapter for RequireJS, for loading AMD modules. Includes RequireJS optimizer 
npm install -g handlebars       # Handlebars provides the power necessary to let you build semantic templates effectively with no frustration 
npm install -g http-server      # a simple zero-configuration command-line http server 
npm install -g n                # node version manager 

# yeoman generators
npm install -g generator-backbone
npm install -g generator-angular
npm install -g generator-ember
npm install -g generator-knockout
npm install -g generator-bootstrap
npm install -g generator-chrome-extension
npm install -g generator-karma  

# Possible Useful packages
# async Higher-order functions and common patterns for asynchronous code 
# mocha simple, flexible, fun test framework 
# jade Jade template engine 
# mongoose Mongoose MongoDB ODM 
# optimist Light-weight option parsing with an argv hash. No optstrings attached. 
# colors get colors in your node.js console like what 
# q A library for promises (CommonJS/Promises/A,B,D) 
# marked A markdown parser built for speed 
# mongodb A node.js driver for MongoDB 
# less Leaner CSS 
# passport Simple, unobtrusive authentication for Node.js. 
# backbone Give your JS App some Backbone with Models, Views, Collections, and Events. 
# grunt-cli The grunt command line interface. 
# cookies Cookies, optionally signed using Keygrip. 
# validator Data validation, filtering and sanitization for node.js 
# oauth Library for interacting with OAuth 1.0, 1.0A, 2 and Echo. Provides simplified client access and allows for construction of more complex apis and OAuth providers. 
# sax An evented streaming XML parser in JavaScript 
# sinon JavaScript test spies, stubs and mocks. 

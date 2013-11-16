@echo off
SET LOG_FILE=C:\Users\David\.dotfiles\setup\node_setup.log 

REM apt-get install node
REM or install from downloading from nodejs.org

REM nodejs setup
SET NODE_PATH=C:\dev\tools\npm
SETX NODE_PATH %NODE_PATH% /M
echo NODE_PATH $NODE_PATH$ > %LOG_FILE%

SET PATH=C:\dev\languages\nodejs\;%NODE_PATH%;%PATH%
SETX PATH %PATH% /M
echo PATH %PATH% >> %LOG_FILE%

npm config set cache "C:\\dev\\.npm"
npm config set prefix "C:\\dev\\tools\npm"

REM clean cache
npm cache clean

REM npm packages
npm install -g karma
npm install -g yo
npm install -g request          REM Simplified HTTP request client. 
npm install -g grunt            REM The JavaScript Task Runner 
npm install -g socket.io        REM Real-time apps made cross-browser & easy with a WebSocket-like API 
npm install -g underscore       REM JavaScript's functional programming helper library. 
npm install -g redis            REM Redis client library 
npm install -g coffee-script    REM Unfancy JavaScript 
npm install -g jshint           REM Static analysis tool for JavaScript 
npm install -g uglify-js        REM JavaScript parser, mangler/compressor and beautifier toolkit 
npm install -g bower            REM The browser package manager. 
npm install -g requirejs        REM Node adapter for RequireJS, for loading AMD modules. Includes RequireJS optimizer 
npm install -g handlebars       REM Handlebars provides the power necessary to let you build semantic templates effectively with no frustration 
npm install -g http-server      REM a simple zero-configuration command-line http server 
npm install -g n                REM node version manager 

REM yeoman generators
npm install -g generator-backbone
npm install -g generator-angular
npm install -g generator-ember
npm install -g generator-knockout
npm install -g generator-bootstrap
npm install -g generator-chrome-extension
npm install -g generator-karma  

REM Possible Useful packages
REM async Higher-order functions and common patterns for asynchronous code 
REM mocha simple, flexible, fun test framework 
REM jade Jade template engine 
REM mongoose Mongoose MongoDB ODM 
REM optimist Light-weight option parsing with an argv hash. No optstrings attached. 
REM colors get colors in your node.js console like what 
REM q A library for promises (CommonJS/Promises/A,B,D) 
REM marked A markdown parser built for speed 
REM mongodb A node.js driver for MongoDB 
REM less Leaner CSS 
REM passport Simple, unobtrusive authentication for Node.js. 
REM backbone Give your JS App some Backbone with Models, Views, Collections, and Events. 
REM grunt-cli The grunt command line interface. 
REM cookies Cookies, optionally signed using Keygrip. 
REM validator Data validation, filtering and sanitization for node.js 
REM oauth Library for interacting with OAuth 1.0, 1.0A, 2 and Echo. Provides simplified client access and allows for construction of more complex apis and OAuth providers. 
REM sax An evented streaming XML parser in JavaScript 
REM sinon JavaScript test spies, stubs and mocks. 


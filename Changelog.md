# SimpleCalc 3.3.3 #

- The Spanish UI is no longer gigantic and its size is now much closer to the English & Italian UI's. 
- AutoCalc is now enabled by default since it works brilliantly.
- The quadratics UI has been refreshed and the code and functionality is now inline with SimpleQuads.
- Incredibly minor UI changes.
- Added status bar mode. Enabling this mode causes SimpleCalc to run in the background with a status bar item when the window is closed as it has done in the past. Disabling removes the status bar item and causes SimpleCalc to terminate when the window is closed. 

# SimpleCalc 3.3.2 #
## July 20th, 2011 ##

- This update is fully compatible with OS X Lion.
- Reduced memory usage slightly.
- Fixed several memory leaks.
- The AutoCalc checkbox in the preferences window is now guaranteed to be disabled on the first launch of the application.
- Made a few changes to the factorial system, mainly, the user can only enter 3 digits now (since the largest number that can be processed is 170) in order to prevent the application from slowing down by calculating the answer to massive number, from which it would produce no answer (other than infinity) anyway. 
- Removed some unneeded menu bar items.
- It's now possible to toggle automatic updating, automatic update checking and alter the frequency of update checking in the preferences window. 
- The position of the add/remove buttons in averages mode has been changed so that they no longer overlap the scroll bars and cause graphical bugs. 

---

### For Developers Interest Only ###

- The preferences system has been re-written using bindings and `NSUserDefaultsController`.
- Now compiled with the LLVM 2.0 compiler.
- Source code files have been extensively commented.
- Project now uses git source control.

# SimpleCalc 3.3.1 #
## May 13th, 2011 ##

- More of SimpleCalc has been translated into Spanish.
- Translation of SimpleCalc into Italian has begun thanks to Pierpaolo Caricato. 

# SimpleCalc 3.3 #
## May 8th, 2011 ##

- Completely re-written the method for working out averges (again!) to make it cleaner and faster (for developers interest, it now uses bindings).
- The averages table now begins editing an entry on insert so as soon as you click the '+' button you begin editing the number.
- You can now select multiple numbers in the averages table by holding the command key and clicking on numbers.
- Can now remove multiple numbers at once rather than one at a time.
- Removed the 'Remove All Numbers' button in favour of just selecting all the numbers and pressing the '-' button.
- Began localising application into Spanish. Roughly 80% of the application has been translated so far. NB: The Spanish will be far from perfect since Spanish isn't my first language.
- Fixed two clipping issues. 

# SimpleCalc 3.2 #
## May 2nd, 2011 ##

- A new feature called AutoCalc has been added. This allows the calculator to work out your answers as you type your questions. Experimental and currently works with basic maths, factorials & quadratics. Disable by default.
- A new UI for working out averages has been developed. It allows for a (theoretical) infinite amount of numbers to average. Makes use of AutoCalc and is enabled by default.
- Menu bar item now does something! Clicking the menu bar items sows/hides the application.
- Many code improvements that make the code cleaner and easier to read. 

# SimpleCalc 3.1 #
## April 16th, 2011 ##

- Fixed some clipping issues.
- Differentiation: No longer displays a warning when the power is 0, rather, X disappears. 
- Changed the about screen to include links to websites.

# SimpleCalc 3.0 #
## February 26th, 2011 ##

- Completely redesigned user interface. Uses tabbed views rather than a single view.
- Added the ability to solve quadratic equations using the quadratic formula. 
- Added the ability to differentiate and integrate functions.
- Added the ability to root numbers.
- Added the ability to calculate the factorial of a number.
- Added the ability to carry out conversions e.g cm - m, feet - m etc.
- The name of the project has been standardised to SimpleCalc.

## The design for this release notes page was inspired by the wonderful [Smaller's](http://smallerapp.com) release notes page. 
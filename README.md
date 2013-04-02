Twitter Flight Template
=====================

fyi, coffeescript template, use http://js2coffee.org/ if you haven't attained webdev enlightenment yet :p

1) Follow instructions to install Twitter Flight using Bower, must be a repo created to AMD spec.  I use require.js.  Just follow the Twitter Flight Docs. https://github.com/twitter/flight
2) copy flightTemplate.coffee in the directory specified for your components within your main require.coffee file.
4) Rename the file, and the name within defineComponent function.
5) Add an attachTo method to the area you do this in your code.  I initialize from my index.js(require.js) file, the intialize function and the attachTo's are included in an app.js file one directory deeper.  The app.js file points to all the components(js files) one directory deeper from there.

//root/js(index.js where I initialize)/app(app.js where I attachTo)/components(components created using defined Flight Templates)



Stock, Agnostic, De-Coupled, Twitter Flight Component that I use for each DOM Node I create.  I felt the Twitter Flight Docs were complete yet not heuristic as to implementation.  Follow the steps I've listed above and you can have the power of flight within the time of finishing your first Latte of the day.  My Template clearly defines what is in a component, and you as the engineer can use each partition of the template according to your desired intent.  Not all are required such as a component that just acts based on an event emmitted from an external component, in this case internal event emitters would not be in existence.

Bend the DOM to your will with clarifty of Intent, that coder who takes over your SPA in 5 years will send you a hackernews thank you T-Shirt for making his life chock full of monadic zen.

Four main parts to the template,
Attributes, Functions, Internal Events, External Events.  Make as many of these as DOM Nodes you have and when done that concludes your SPA.
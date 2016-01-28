<style>
.reveal h1, .reveal h2, .reveal h3 {
word-wrap: normal;
-moz-hyphens: none;
}
.small-code pre code {
font-size: 1em;
}
.midcenter {
position: fixed;
top: 50%;
left: 50%;
}
.footer {
color: black; background: #E8E8E8;
position: fixed; top: 90%;
text-align:center; width:100%;
}
.pinky .reveal .state-background {
background: #FF69B4;
}
.pinky .reveal h1,
.pinky .reveal h2,
.pinky .reveal p {
color: black;
}
</style>
myshinyapp333
========================================================
author: Jose Mendez
date: 28 jun 2016
font-family: 'Helvetica'

"Basic Data Exploring" 
===
class: small-code
In this Report we will expose about a simple Shiny Application with interactions in
two areas: the left and top side (input area) and rigth middle and bottom (ouput side).
At this time we will show some features of Shiny in this application exposed in the 
following slides.
The application is called "Basic Data Exploring". Using the Shiny facilities permits 
you to select between three data sets: { Rock (the default), Pressure and Car }
Once selected the dataset { via dataset selector widget } you can obtain five results, via Tabular Tag UI Schemes: { Caption, Info, Summary, View and Plot } in the top Rigth of the UI page.
The caption permit to modify an entry in the ouput (the text field). Selecting the dataset and the others tags permit you to obtain Information, Visualization (Head), Summary and Plot of the selected dataset with the plot type specified. 

General Application Operation
===
class: small-code

Let see,
The DataSets and its variables are:
  rock:{variables: area, shape, perimeter and perm }, pressure:{variables: temperature and pressure },
  car:{ variables: distance and velocity } 
The results obtained with the Shiny application are:
 1. Caption, the simple interaction of the input caption string to the ouput area.
 2. Info, expose the dimension and variables of the dataset.
 3. Summary of the data {min, max, mean, median and 1th, 3th Quantiles}.
 4. View, the selected number of rows of the dataset selected.
 5. Plot the dataset in two savours, direct and correlation one.
 Note: the application Sources, the documents and the intercative Shiny App are added here.


Functioning
===
class: small-code
 1. You can change the Caption to the default: "Basic Data Exploting and this change is made
immediately in the output caption area.
 2. Then you can select the numbers of observations or rows to View of this dataset, by default 7.
 3. Or, Select the new dataset and automatically its Summary, Plot and View are changed. All the output updates are done in the main panel (the center rigth side) and handled by the inputs in the left sides area pf the page.
 4. The input plot type (radio buttom) define the type of plot to display, the direct or the correlation one.
 5. When the system start the rock dataset is taken and all is prepared to display selecting the tags options.

=== 
All the programs and Documents associated
 
* The interactive pitch report that require a shiny server in:
  <Shiny Pitch Report> (https://jm3mendez.shinyapps.io/myshinyapp33)
* Github Sources of the Shiny Application ( server.R, ui.R, Docs and more ) 
  <jm3mendez Github> (https://github.com/jm3mendez/myshinyapp3)
* The shiny Application alone 
  <Shiny App> (https://jm3mendez.shinyapps.io/myshiny1)
* The Rpubs pitch reports
  <RPubs Repo> ( https://rpubs.com/jmendez/myshinyapp333)

# My Shiny Application
Jose Mendez  
1/17/2016  

## "Basic Data Exploring" Shiny Application

In this Report we will expose about a simple Shiny Application with interactions in
two areas: the left input area and rigth ouput side.
At this time we will show some features of Shiny in this application exposed in the 
following slides.

The application is called "Basic Data Exploring". Using the Shiny facilities permits 
you to select between three data sets: { Rock (the default), Pressure and Car }

Once selected the dataset { via dataset selector widget } you can obtain five results, via Tabular UI Schemes:
 { Caption, Info, Summary, View and Plot } in the top Rigth of the UI page.

## General Application Operation

The DataSets and its variables are:
  rock:{ area, shape, perimeter and perm }, pressure:{ temperature and pressure },
  car:{ distance and velocity } 

The results obtained with the Shiny application are:

 1. Caption, the simple interaction of the caption string.
 
 2. Info, the dimension and variables of the dataset.
 
 3. Summary of the data {min, max, mean, median and 1th, 3th Quantiles}.
 
 4. View, the selected number of rows of the dataset selected.
 
 5. Plot the dataset in two savour direct and correlation one.
 

## Functioning

 1. You can change the Caption to the default: "Basic Data Exploting and this change is made
immediately in the output caption area.

 2. Then you can select the numbers of observations or rows to View of this dataset, by default 7.

 3. Select the new dataset and automatically its Summary, Plot and View are changed. All the output updates are done in the main panel (the rigth side) and the inputs in the left sides.

 4.- the input plot type (radio buttom) define the type of plot to display, the direct or the correlation one.

 5. When the system start the rock dataset is taken and all is prepared to display selecting the options.

##
<!--html_preserve--><div class="container-fluid">
<h2>Basic Data Exploring...</h2>
<div class="row">
<div class="col-sm-4">
<form class="well">
<div class="form-group shiny-input-container">
<label for="caption">Caption:</label>
<input id="caption" type="text" class="form-control" value="Basic Data Exploring (v0.3)"/>
</div>
<div class="form-group shiny-input-container">
<label class="control-label" for="dataset">Choose a Dataset:</label>
<div>
<select id="dataset"><option value="rock" selected>rock</option>
<option value="pressure">pressure</option>
<option value="cars">cars</option></select>
<script type="application/json" data-for="dataset" data-nonempty="">{}</script>
</div>
</div>
<div class="form-group shiny-input-container">
<label for="obs">Number of rows to View:</label>
<input id="obs" type="number" class="form-control" value="7"/>
</div>
<div id="ptype" class="form-group shiny-input-radiogroup shiny-input-container">
<label class="control-label" for="ptype">Choose Plot Type:</label>
<div class="shiny-options-group">
<div class="radio">
<label>
<input type="radio" name="ptype" value="Direct" checked="checked"/>
<span>Direct</span>
</label>
</div>
<div class="radio">
<label>
<input type="radio" name="ptype" value="Correlation"/>
<span>Correlation</span>
</label>
</div>
</div>
</div>
</form>
</div>
<div class="col-sm-8">
<div class="tabbable tabs-above">
<ul class="nav nav-tabs">
<li class="active">
<a href="#tab-3095-1" data-toggle="tab" data-value="Caption">Caption</a>
</li>
<li>
<a href="#tab-3095-2" data-toggle="tab" data-value="Info">Info</a>
</li>
<li>
<a href="#tab-3095-3" data-toggle="tab" data-value="Summary">Summary</a>
</li>
<li>
<a href="#tab-3095-4" data-toggle="tab" data-value="View">View</a>
</li>
<li>
<a href="#tab-3095-5" data-toggle="tab" data-value="PLot">PLot</a>
</li>
</ul>
<div class="tab-content">
<div class="tab-pane active" data-value="Caption" id="tab-3095-1">
<h4>
<div id="caption" class="shiny-text-output"></div>
</h4>
</div>
<div class="tab-pane" data-value="Info" id="tab-3095-2">
<div id="str" class="shiny-text-output"></div>
</div>
<div class="tab-pane" data-value="Summary" id="tab-3095-3">
<pre id="summary" class="shiny-text-output"></pre>
</div>
<div class="tab-pane" data-value="View" id="tab-3095-4">
<div id="view" class="shiny-html-output"></div>
</div>
<div class="tab-pane" data-value="PLot" id="tab-3095-5">
<div id="Plot" class="shiny-plot-output" style="width: 100% ; height: 400px"></div>
</div>
</div>
</div>
</div>
</div>
</div><!--/html_preserve-->



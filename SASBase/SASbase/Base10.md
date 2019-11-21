SAS Base 10: Producing HTML Output
-----------------------------------

### Sections 
1. The Outpu Delivery System
2. Opening and Closing ODS Destination
3. Creating Simple HTML Output
4. Creating HTML Output with a table of contents
5. Using Options to Specify Links and Paths
6. Changing the Appearance of HTML output
 

<hr> 

- How ODS Works
- Opening and Closing ODS Destination
- ODS Destinations
- Absolute URLs
- Relative URLs
- Changing the Appearance of HTML output
- Specifying a Path for Output
- ODS provides ways for customising
- HTML output using style definitions.
- Definitions are created using PROC TEMPLATE
(p301)

<pre><code>
ods listing close;
ods html body = 'f:\admit.html';
proc print data = clinic.admit label;
 var sex age heights weight actlevel;
 label actlevel='Activity Level';
run;
ods html close;
ods listing;
</code></pre>

Chapter 10

#### Using Options to Specify Links and Paths
The `URL=` suboption (page 307)

- absolute URLS
- Relative URLS

The `PATH=` suboption (page 309) 

#### Changing the appearance of HTML output
<pre><code>
ods listing close;
ods html body='c:\records\data.html'
   style=brick;
proc print data=clinic.admit label;
   var sex age height weight actlevel;
run;
ods html close;
ods listing;
</code></pre>

#### Changing the Appearance of HMTL output
Styles: Beige, Brick, Brown, D3d, Default, Minimal

<pre><code>
data listing close;
ods html body ='C:\records\data.html'
    style=brick;
proc print data=clinic.admit label;
    var sex age height weight actlevel;
run;
ods html close;
ods listing;

</code></pre>


(p303)
<pre><code>
proc tabulate data=clinic.stress2;
 var resthr maxhr rechr;
 table min mean, resthr maxhr rechr;
run;
ods html close;
ods listings
</code></pre>



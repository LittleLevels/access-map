# access-map

This explores pedestrian routes with different cost functions using Open Street Map data and pgRouting.

The first route finds the shortest route.
The second route finds the shortest route with an additional penalty for crossing the street.
The third route finds the shortest route with additional penalties for crossing the street and if the crosswalk is uncontrolled (ie no signal). 
The fourth route finds the shortest route with additional penalties for crossing the street and if the crosswalk is uncontrolled (ie no signal) or unmarked. 

The sql files are for use with a psql database loaded with OSM data using osm2pgrouting. They have been hardcoded with a start and end location.

Example output comparing the routes is visualized in QGIS. 

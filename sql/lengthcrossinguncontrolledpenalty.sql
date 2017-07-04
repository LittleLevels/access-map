/* cost is length_m from ways table + highway='crossing' + crossing'='uncontrolled'
Reset planet_osm_line costs */
 
update planet_osm_line SET cost = 0;
update planet_osm_line SET cost = 10 where footway='crossing';
update planet_osm_line SET cost = 20 where crossing='uncontrolled';

/* routing from vertice id 2983 to id 274
returns table 'lengthcrossinguncontrolled' with route and osm info for visualization */

CREATE TABLE lengthcrossinguncontrolled as SELECT * FROM ways JOIN (SELECT seq, node, edge, agg_cost FROM pgr_dijkstra('SELECT gid as id, w.osm_id, w.source, w.target, w.length_m+l.cost as cost FROM ways w, planet_osm_line l WHERE w.osm_id=l.osm_id AND l.highway=''footway''', 2983, 274, FALSE)) AS route on ways.gid = route.edge;

/* calculate length of route */

SELECT sum(ST_LengthSpheroid( the_geom, 'SPHEROID["GRS_1980",6378137,298.257222101]' ) / 1000) AS km FROM lengthcrossinguncontrolled;


/* Find the nearest vertices to use in routing from manually selected (lat, lon) close to source and target of interest.
These are for bus stops at 15th & 42nd and Pacific and Montlake Blvd, Seattle WA*/ 


select id from ways_vertices_pgr order by st_distance(the_geom, st_setsrid(st_makepoint(-122.31219, 47.65837), 4326)) limit 1;  

select id from ways_vertices_pgr order by st_distance(the_geom, st_setsrid(st_makepoint(-122.30496, 47.64907), 4326)) limit 1;  



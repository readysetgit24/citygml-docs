use scratch;
select distinct zipcode from pluto_22v3_1 
where numfloors=2 and schooldist=13 and borough='BK';

select distinct block, address from pluto_22v3_1
where histdist='Bedford Historic District';
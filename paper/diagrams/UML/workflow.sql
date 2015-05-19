CREATE TABLE tr_saarburg as
SELECT *
FROM tr_4511 as f, "public"."Saarburg_extent" as e
WHERE ST_WITHIN(f.wkb_geometry, e.the_geom);

CREATE INDEX tr_saarburg_idx ON tr_saarburg USING GIST ( wkb_geometry );

alter table tr_saarburg
drop the_geom;

UPDATE "NA_Storms"
	SET "Strike_Target" = 1
	FROM "fl_storms"
	WHERE "NA_Storms"."SID" in (select distinct "fl_storms"."SID" from "fl_storms"); -- = "fl_storms"."SID"
	


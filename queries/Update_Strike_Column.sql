
UPDATE "NA_Storms"
	SET "Strike_Target" = 1
	FROM "fl_storms"
	WHERE "NA_Storms"."NAME" in (select distinct "fl_storms"."NAME" from "fl_storms"); -- = "fl_storms"."NAME"
	


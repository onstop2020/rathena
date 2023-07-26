// Copyright (c) rAthena Dev Teams - Licensed under GNU GPL
// For more information, see LICENCE in the main folder

/**
 * Custom Atcommands
 * Place the body of custom atcommands in this file.
 * Format:
 *	ACMD_FUNC(command_name)
 *	{
 *		<code>;
 *	}
 **/

//ACMD_FUNC(newcommand)
//{
//	clif_displaymessage(fd, "It works!");
//	clif_specialeffect(&sd->bl, EF_HEARTCASTING, AREA);
//	return 0;
//}

ACMD_FUNC(debuff)
{
	short debuff;

	nullpo_retr(-1, sd);

	memset(atcmd_output, '\0', sizeof(atcmd_output));

	if (!message || !*message || sscanf(message, "%6hd", &debuff) < 1) {
		sprintf(atcmd_output, msg_txt(sd,1549), sd->all_debuff);
		clif_displaymessage(fd, atcmd_output);

		return 0;
	}

	sd->all_debuff = cap_value(debuff, 0, 100);

	status_calc_pc(sd, SCO_FORCE);

	sprintf(atcmd_output, msg_txt(sd,1549), sd->all_debuff);
	clif_displaymessage(fd, atcmd_output);

	return 0;
}

ACMD_FUNC(bd)
{
	short debuff;

	nullpo_retr(-1, sd);

	memset(atcmd_output, '\0', sizeof(atcmd_output));

	if (!message || !*message || sscanf(message, "%6hd", &debuff) < 1) {
		sprintf(atcmd_output, msg_txt(sd,1550), sd->all_bonus_divider);
		clif_displaymessage(fd, atcmd_output);

		return 0;
	}

	sd->all_bonus_divider = cap_value(debuff, 0, 100);

	status_calc_pc(sd, SCO_FORCE);

	sprintf(atcmd_output, msg_txt(sd,1550), sd->all_bonus_divider);
	clif_displaymessage(fd, atcmd_output);

	return 0;
}

ACMD_FUNC(debugbonus)
{
	nullpo_retr(-1, sd);

	memset(atcmd_output, '\0', sizeof(atcmd_output));

	sprintf(atcmd_output, "ATK %d%", sd->bonus.atk_rate);
	clif_displaymessage(fd, atcmd_output);

	return 0;
}

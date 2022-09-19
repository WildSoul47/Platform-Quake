/// @desc SLideTrasitiom(mode, targetroom)
/// @arg Mode set transition mode between next, restart and goto.
/// @arg Target sets target room when using the goto mode

with (oTransition)
{
	mode = argument[0];
	if (argument_count > 1) target = argument[1];
}
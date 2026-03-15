// Script imports are not required for HScript execution in Psych Engine.
// Global types used by this script are exposed via the HScript preset.

function onCreate()
{
	Story.mathMisses = 0;
	
	game.iconBopInterval = 2;
	game.gfSpeed = 2;
	
	initScript('scripts/thinkpad/script.hx');
}

function onEvent(ev, v1, v2, time)
{
	switch (ev)
	{
		case '':
			switch (v1)
			{
				case 'goodOne':
					var anim = Story.mathMisses == 0 ? 'goodOne' : 'badOne';
					
					dad.playAnim(anim, true);
					dad.specialAnim = true;
					
				case 'swapBaldiPoses':
					if (Story.mathMisses != 0) getVar('setBaldiAnim')('-upset');
			}
	}
}

function onEndSong()
{
	if (PlayState.isStoryMode)
	{
		if (Story.mathMisses == 0)
		{
			PlayState.storyPlaylist[PlayState.storyPlaylist.indexOf('Lesson')] = 'Lesson-good';
		}
	}
	
	return Constants.SCRIPT_CONTINUE;
}

function onCountdownStarted()
{
	countdownDelay = Conductor.crochet * 1.75;
	Conductor.songPosition = -countdownDelay * 5;
	
	return Constants.SCRIPT_CONTINUE;
}

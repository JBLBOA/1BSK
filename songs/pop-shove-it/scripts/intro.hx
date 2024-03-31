var intro:FlxSprite;

function create()
    {
        intro = new FlxSprite().makeSolid(FlxG.width, FlxG.height, 0xFF000000);
        intro.alpha = 1;
        intro.cameras = [camHUD];
        add(intro);
    }

function onSongStart()
    {
        FlxTween.tween(intro, { alpha: 0 }, 3);
    }

function stepHit(curStep:Int)
    {
        switch(curStep) {
            case 1051:
                intro.alpha = 1; 
        }
    }
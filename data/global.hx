import funkin.game.GameOverSubstate;
import funkin.menus.PauseSubState;

import funkin.backend.utils.WindowUtils;
import openfl.Lib;
import lime.graphics.Image;

import hxvlc.util.Handle;

static var windowsTitle:String = "1BSK";

static var redirectStates:Map<FlxState, String> = 
[
    MainMenuState => "menus/MainMenu"
];

function new() 
{    
    Handle.init([]);
}

function preStateSwitch() 
{
    WindowUtils.resetTitle();

    window.title = windowsTitle;
    //window.setIcon(Image.fromBytes(Assets.getBytes(Paths.image('iconOG'))));

    FlxG.camera.bgColor = 0xFF000000;
}

function update(elapsed)
{
    if (FlxG.keys.justPressed.F5)
        FlxG.resetState();
}

function destroy() FlxG.camera.bgColor = 0xFF000000;
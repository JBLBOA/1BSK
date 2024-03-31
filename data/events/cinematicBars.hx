var bar1:FunkinSprite = null;
var bar2:FunkinSprite = null;

function create()
    {
        defaultCamZoom = 1.05;
        FlxTween.tween(FlxG.camera, {zoom: defaultCamZoom}, 0.3, {ease: FlxEase.circOut});
        FlxG.camera.scroll.set(smoothTransitionData.camX, smoothTransitionData.camY);
    }

function postCreate() {
    bar1 = new FunkinSprite(0, -160).makeSolid(FlxG.width, 160, 0xFF000000);
    bar1.cameras = [camHUD];
    insert(members.indexOf(strumLines), bar1);

    bar2 = new FunkinSprite(0, FlxG.height).makeSolid(FlxG.width, 160, 0xFF000000);
    bar2.cameras = [camHUD];
    insert(members.indexOf(strumLines), bar2);
}

function onEvent(eventEvent) {
    var params:Array = eventEvent.event.params;
    if (eventEvent.event.name == "cinematicBars") {
        if(params[0])
            {
                FlxTween.tween(bar1, { y: 0 }, 0.3, {ease: FlxEase.circInOut});
                FlxTween.tween(bar2, { y: FlxG.height - 140 }, 0.3, {ease: FlxEase.circInOut});
            }

         if(!params[0])
            {
                bar1.alpha = 0;
                FlxTween.tween(bar1, { y: -160 }, 0.3, {ease: FlxEase.circInOut});
                FlxTween.tween(bar2, { y: FlxG.height }, 0.3, {ease: FlxEase.circInOut});
            }

        if(params[1])
            {
                defaultCamZoom = 1.5;
                FlxTween.tween(FlxG.camera, {zoom: defaultCamZoom}, 0.3, {ease: FlxEase.circOut});
                FlxG.camera.scroll.set(99,99);
            }

        if(!params[1])
            {
                defaultCamZoom = 1.05;
                FlxTween.tween(FlxG.camera, {zoom: defaultCamZoom}, 0.3, {ease: FlxEase.circOut});
                FlxG.camera.scroll.set(smoothTransitionData.camX, smoothTransitionData.camY);
            }
    }
}
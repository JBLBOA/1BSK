function onEvent(eventEvent) {
    var params:Array = eventEvent.event.params;
    if (eventEvent.event.name == "setcamerazoom") {
        defaultCamZoom = params[0];
        FlxTween.tween(FlxG.camera, {zoom: defaultCamZoom}, 0.3, {ease: FlxEase.circOut});
    }
}
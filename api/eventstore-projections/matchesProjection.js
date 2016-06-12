fromStream('cricket_events_v1')
.when({
    'cricket_event' : function(state ,event) {
        linkTo('cricd-match-' + event.data.match, event);
    }
});

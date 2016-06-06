fromStream('cricket_events_v1')
.when({
    'cricket_event' : function(state ,event) {
      if(event.data.bowler.id) linkTo('cricd-bowler-' + event.data.bowler.id, event);
    }
});

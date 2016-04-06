## Shared parameters
Parameters that are common across many different match events

 Parameter | Type | Required? | 
-----------|------|-----------|----------
match | string | true | id of the match this event relates to
eventType | string | true | Identifies the event type
timestamp | datetime | true | The time that the match event occured
batsmen.striker | object | false | The name and id of the batsman on strike
batsmen.nonStriker | object | false | The name and id of the batsman off strike
bowler | object | false | The name and id of the bowler


## Dot balls and runs
 Parameter | Type | Required? | 
-----------|------|-----------|----------
runs | int | false | The number of runs successfully taken by a batting side. Defaults to 0 which is a dot ball

```javascript
{
	match: '1fcf3f76-2cb6-4d69-8b1b-119af72df810',
	eventType: 'delivery',
	timestamp: '2012-04-23T18:25:43.511Z',
	runs: 4,
	batsmen: {
		striker: {
			id: '3433b37f-4492-4293-bae3-5bfdc787e9b0',
			name: 'Bradley S Scott'
		},
		nonStriker: {
			id: '712454b0-7e13-405b-9fd4-e285b777d4af',
			name: 'Ryan K Scott'
		}
	},
	bowler: {
		id: '6708581a-9c92-4edb-84d2-b83d31b9a8ab',
		name: 'Shane E Bond'
	}
}
```

## Extras (No ball, Wide, Bye and Leg byes)

 Parameter | Type | Required? | 
-----------|------|-----------|----------
 eventType | string | true | noBall, wide, bye, legBye
runs | int | false | The number of runs successfully taken by a batting side during that extra. Defaults to 0

```javascript
{
	match: '1fcf3f76-2cb6-4d69-8b1b-119af72df810',
	eventType: 'noBall',
	timestamp: '2012-04-23T18:25:43.511Z',
	runs: 2,
	batsmen: {
		striker: {
			id: '3433b37f-4492-4293-bae3-5bfdc787e9b0',
			name: 'Bradley S Scott'
		},
		nonStriker: {
			id: '712454b0-7e13-405b-9fd4-e285b777d4af',
			name: 'Ryan K Scott'
		}
	},
	bowler: {
		id: '6708581a-9c92-4edb-84d2-b83d31b9a8ab',
		name: 'Shane E Bond'
	}
}
```

## Penalty runs
```javascript
{
	match: '1fcf3f76-2cb6-4d69-8b1b-119af72df810',
	eventType: 'penaltyRuns',
	timestamp: '2012-04-23T18:25:43.511Z',
	runs: 5
}
```

#Dismissals
## Bowled
```javascript
{
	match: '1fcf3f76-2cb6-4d69-8b1b-119af72df810',
	eventType: 'bowled',
	timestamp: '2012-04-23T18:25:43.511Z',
	batsmen: {
		striker: {
			id: '3433b37f-4492-4293-bae3-5bfdc787e9b0',
			name: 'Bradley S Scott'
		},
		nonStriker: {
			id: '712454b0-7e13-405b-9fd4-e285b777d4af',
			name: 'Ryan K Scott'
		}
	},
	bowler: {
		id: '6708581a-9c92-4edb-84d2-b83d31b9a8ab',
		name: 'Shane E Bond'
	}
}
```

## Timed out
 Parameter | Type | Required? | 
-----------|------|-----------|----------
batsman | object | true | The name and id of the batsman that was timed out

```javascript
{
	match: '1fcf3f76-2cb6-4d69-8b1b-119af72df810',
	eventType: 'timedOut',
	timestamp: '2012-04-23T18:25:43.511Z',
	batsman: {
		id: '3433b37f-4492-4293-bae3-5bfdc787e9b0',
		name: 'Bradley S Scott'
	}
}
```

## Caught
 Parameter | Type | Required? | 
-----------|------|-----------|----------
didCross | bool | false | Whether or not the batsmen crossed before the catch was taken. Defaults to false
fielder | object | false | The name and id of the fielder that caught the ball

```javascript
{
	match: '1fcf3f76-2cb6-4d69-8b1b-119af72df810',
	eventType: 'caught',
	timestamp: '2012-04-23T18:25:43.511Z',
	didCross: false,
	batsmen: {
		striker: {
			id: '3433b37f-4492-4293-bae3-5bfdc787e9b0',
			name: 'Bradley S Scott'
		},
		nonStriker: {
			id: '712454b0-7e13-405b-9fd4-e285b777d4af',
			name: 'Ryan K Scott'
		}
	},
	bowler: {
		id: '6708581a-9c92-4edb-84d2-b83d31b9a8ab',
		name: 'Shane E Bond'
	},
	fielder: {
		id: 'b1a44166-4b65-4985-991a-9f9e784bcfa4',
		name: 'Mark Richardson'
	}
}
```

## Handled ball
```javascript
{
	match: '1fcf3f76-2cb6-4d69-8b1b-119af72df810',
	eventType: 'handledBall',
	timestamp: '2012-04-23T18:25:43.511Z',
	batsmen: {
		striker: {
			id: '3433b37f-4492-4293-bae3-5bfdc787e9b0',
			name: 'Bradley S Scott'
		},
		nonStriker: {
			id: '712454b0-7e13-405b-9fd4-e285b777d4af',
			name: 'Ryan K Scott'
		}
	},
	bowler: {
		id: '6708581a-9c92-4edb-84d2-b83d31b9a8ab',
		name: 'Shane E Bond'
	}
}
```

## Double hit
```javascript
{
	match: '1fcf3f76-2cb6-4d69-8b1b-119af72df810',
	eventType: 'doubleHit',
	timestamp: '2012-04-23T18:25:43.511Z',
	batsmen: {
		striker: {
			id: '3433b37f-4492-4293-bae3-5bfdc787e9b0',
			name: 'Bradley S Scott'
		},
		nonStriker: {
			id: '712454b0-7e13-405b-9fd4-e285b777d4af',
			name: 'Ryan K Scott'
		}
	},
	bowler: {
		id: '6708581a-9c92-4edb-84d2-b83d31b9a8ab',
		name: 'Shane E Bond'
	}
}
```

## Hit wicket
```javascript
{
	match: '1fcf3f76-2cb6-4d69-8b1b-119af72df810',
	eventType: 'hitWicket',
	timestamp: '2012-04-23T18:25:43.511Z',
	batsmen: {
		striker: {
			id: '3433b37f-4492-4293-bae3-5bfdc787e9b0',
			name: 'Bradley S Scott'
		},
		nonStriker: {
			id: '712454b0-7e13-405b-9fd4-e285b777d4af',
			name: 'Ryan K Scott'
		}
	},
	bowler: {
		id: '6708581a-9c92-4edb-84d2-b83d31b9a8ab',
		name: 'Shane E Bond'
	}
}
```

## Leg before Wicket (LBW)
```javascript
{
	match: '1fcf3f76-2cb6-4d69-8b1b-119af72df810',
	eventType: 'lbw',
	timestamp: '2012-04-23T18:25:43.511Z',
	batsmen: {
		striker: {
			id: '3433b37f-4492-4293-bae3-5bfdc787e9b0',
			name: 'Bradley S Scott'
		},
		nonStriker: {
			id: '712454b0-7e13-405b-9fd4-e285b777d4af',
			name: 'Ryan K Scott'
		}
	},
	bowler: {
		id: '6708581a-9c92-4edb-84d2-b83d31b9a8ab',
		name: 'Shane E Bond'
	}
}
```

## Obstructing the field
 Parameter | Type | Required? | 
-----------|------|-----------|----------
batsman | object | true | The name and id of the batsman that was timed out

```javascript
{
	match: '1fcf3f76-2cb6-4d69-8b1b-119af72df810',
	eventType: 'obstruction',
	timestamp: '2012-04-23T18:25:43.511Z',
	batsman: {
		id: '3433b37f-4492-4293-bae3-5bfdc787e9b0',
		name: 'Bradley S Scott'
	}
}
```

## Run out
 Parameter | Type | Required? | 
-----------|------|-----------|----------
runs | int | false | The number of runs successfully taken by a batting side before the runout. Defaults to 0 which is a run out attempting a single
fielder | object | false | The name and id of the fielder that caused the runout


```javascript
{
	match: '1fcf3f76-2cb6-4d69-8b1b-119af72df810',
	eventType: 'runOut',
	timestamp: '2012-04-23T18:25:43.511Z',
	runs: 1,
	batsmen: {
		striker: {
			id: '3433b37f-4492-4293-bae3-5bfdc787e9b0',
			name: 'Bradley S Scott'
		},
		nonStriker: {
			id: '712454b0-7e13-405b-9fd4-e285b777d4af',
			name: 'Ryan K Scott'
		}
	},
	bowler: {
		id: '6708581a-9c92-4edb-84d2-b83d31b9a8ab',
		name: 'Shane E Bond'
	},
	fielder: {
		id: 'b1a44166-4b65-4985-991a-9f9e784bcfa4',
		name: 'Mark Richardson'
	}
}
```

## Stumped
 Parameter | Type | Required? | 
-----------|------|-----------|----------
fielder | object | false | The name and id of the wicketkeeper that performed the stumping

```javascript
{
	match: '1fcf3f76-2cb6-4d69-8b1b-119af72df810',
	eventType: 'stumped',
	timestamp: '2012-04-23T18:25:43.511Z',
	batsmen: {
		striker: {
			id: '3433b37f-4492-4293-bae3-5bfdc787e9b0',
			name: 'Bradley S Scott'
		},
		nonStriker: {
			id: '712454b0-7e13-405b-9fd4-e285b777d4af',
			name: 'Ryan K Scott'
		}
	},
	bowler: {
		id: '6708581a-9c92-4edb-84d2-b83d31b9a8ab',
		name: 'Shane E Bond'
	},
	fielder: {
		id: 'b1a44166-4b65-4985-991a-9f9e784bcfa4',
		name: 'Brendan J McCullum'
	}
}
```
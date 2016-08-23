## Shared parameters
Parameters that are common across many different match events

 Parameter | Type | Required? | |
-----------|------|-----------|----------
match | string | true | id of the match this event relates to
eventType | string | true | Identifies the event type
timestamp | datetime | true | The time that the match event occured
bowler | object | false | The name and id of the bowler

### Batsmen
Describes the two batsmen that are at the crease and is required object for many match events

 Parameter | Type | Required? | |
-----------|------|-----------|----------
striker | object | true | The name and id of the batsman on strike
nonStriker | object | true | The name and id of the batsman off strike

```javascript
{
	striker: {
		id: '3433b37f-4492-4293-bae3-5bfdc787e9b0',
		name: 'Bradley S Scott'
	},
	nonStriker: {
		id: '712454b0-7e13-405b-9fd4-e285b777d4af',
		name: 'Ryan K Scott'
	}
}
```

### Ball
Describes which ball in the game a match event relates to

 Parameter | Type | Required? | |
-----------|------|-----------|----------
battingTeam | object | true | The id and the name of the team who are batting
fieldingTeam | object | true | The id and the name of the team who are fielding
innings | int | true | The innings number. In a test match there would be 4 innings numbered 1 to 4.
over | int | true | The over number in this innings. Would be no more than 50 for a ODI, no more than 20 for T20 match
ball | int | true | The ball number in this over. Excluding any extras bowled. No more than 6.

```javascript
{
	battingTeam: {
		id: '3433b37f-4492-4293-bae3-5bfdc787e9b0',
		name: 'Macleans College 1st XI'
	},
	fieldingTeam: {
		id: '712454b0-7e13-405b-9fd4-e285b777d4af',
		name: 'Kings College 1st XI'
	},
	innings: 1,
	over: 1,
	ball: 3
}
```

## Dot balls and runs
 Parameter | Type | Required? | |
-----------|------|-----------|----------
runs | int | false | The number of runs successfully taken by a batting side. Defaults to 0 which is a dot ball

```javascript
{
	match: '1fcf3f76-2cb6-4d69-8b1b-119af72df810',
	eventType: 'delivery',
	timestamp: '2012-04-23T18:25:43.511Z',
	ball: {
		battingTeam: {
			id: '3433b37f-4492-4293-bae3-5bfdc787e9b0',
			name: 'Macleans College 1st XI'
		},
		fieldingTeam: {
			id: '712454b0-7e13-405b-9fd4-e285b777d4af',
			name: 'Kings College 1st XI'
		},
		innings: 1,
		over: 1,
		ball: 3
	},
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

 Parameter | Type | Required? | |
-----------|------|-----------|----------
 eventType | string | true | noBall, wide, bye, legBye
runs | int | false | The number of runs successfully taken by a batting side during that extra. Defaults to 0

```javascript
{
	match: '1fcf3f76-2cb6-4d69-8b1b-119af72df810',
	eventType: 'noBall',
	timestamp: '2012-04-23T18:25:43.511Z',
		ball: {
		battingTeam: {
			id: '3433b37f-4492-4293-bae3-5bfdc787e9b0',
			name: 'Macleans College 1st XI'
		},
		fieldingTeam: {
			id: '712454b0-7e13-405b-9fd4-e285b777d4af',
			name: 'Kings College 1st XI'
		},
		innings: 1,
		over: 1,
		ball: 3
	},
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
	ball: {
		battingTeam: {
			id: '3433b37f-4492-4293-bae3-5bfdc787e9b0',
			name: 'Macleans College 1st XI'
		},
		fieldingTeam: {
			id: '712454b0-7e13-405b-9fd4-e285b777d4af',
			name: 'Kings College 1st XI'
		},
		innings: 1,
		over: 1,
		ball: 3
	},
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
 Parameter | Type | Required? | |
-----------|------|-----------|----------
batsman | object | true | The name and id of the batsman that was timed out

```javascript
{
	match: '1fcf3f76-2cb6-4d69-8b1b-119af72df810',
	eventType: 'timedOut',
	timestamp: '2012-04-23T18:25:43.511Z',
	ball: {
		battingTeam: {
			id: '3433b37f-4492-4293-bae3-5bfdc787e9b0',
			name: 'Macleans College 1st XI'
		},
		fieldingTeam: {
			id: '712454b0-7e13-405b-9fd4-e285b777d4af',
			name: 'Kings College 1st XI'
		},
		innings: 1,
		over: 1,
		ball: 3
	},
	batsman: {
		id: '3433b37f-4492-4293-bae3-5bfdc787e9b0',
		name: 'Bradley S Scott'
	}
}
```

## Caught
 Parameter | Type | Required? | |
-----------|------|-----------|----------
didCross | bool | false | Whether or not the batsmen crossed before the catch was taken. Defaults to false
fielder | object | false | The name and id of the fielder that caught the ball

```javascript
{
	match: '1fcf3f76-2cb6-4d69-8b1b-119af72df810',
	eventType: 'caught',
	timestamp: '2012-04-23T18:25:43.511Z',
	ball: {
		battingTeam: {
			id: '3433b37f-4492-4293-bae3-5bfdc787e9b0',
			name: 'Macleans College 1st XI'
		},
		fieldingTeam: {
			id: '712454b0-7e13-405b-9fd4-e285b777d4af',
			name: 'Kings College 1st XI'
		},
		innings: 1,
		over: 1,
		ball: 3
	},
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
	ball: {
		battingTeam: {
			id: '3433b37f-4492-4293-bae3-5bfdc787e9b0',
			name: 'Macleans College 1st XI'
		},
		fieldingTeam: {
			id: '712454b0-7e13-405b-9fd4-e285b777d4af',
			name: 'Kings College 1st XI'
		},
		innings: 1,
		over: 1,
		ball: 3
	},
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
	ball: {
		battingTeam: {
			id: '3433b37f-4492-4293-bae3-5bfdc787e9b0',
			name: 'Macleans College 1st XI'
		},
		fieldingTeam: {
			id: '712454b0-7e13-405b-9fd4-e285b777d4af',
			name: 'Kings College 1st XI'
		},
		innings: 1,
		over: 1,
		ball: 3
	},
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
	ball: {
		battingTeam: {
			id: '3433b37f-4492-4293-bae3-5bfdc787e9b0',
			name: 'Macleans College 1st XI'
		},
		fieldingTeam: {
			id: '712454b0-7e13-405b-9fd4-e285b777d4af',
			name: 'Kings College 1st XI'
		},
		innings: 1,
		over: 1,
		ball: 3
	},
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
	ball: {
		battingTeam: {
			id: '3433b37f-4492-4293-bae3-5bfdc787e9b0',
			name: 'Macleans College 1st XI'
		},
		fieldingTeam: {
			id: '712454b0-7e13-405b-9fd4-e285b777d4af',
			name: 'Kings College 1st XI'
		},
		innings: 1,
		over: 1,
		ball: 3
	},
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
 Parameter | Type | Required? | |
-----------|------|-----------|----------
batsman | object | true | The name and id of the batsman that was timed out

```javascript
{
	match: '1fcf3f76-2cb6-4d69-8b1b-119af72df810',
	eventType: 'obstruction',
	timestamp: '2012-04-23T18:25:43.511Z',
	ball: {
		battingTeam: {
			id: '3433b37f-4492-4293-bae3-5bfdc787e9b0',
			name: 'Macleans College 1st XI'
		},
		fieldingTeam: {
			id: '712454b0-7e13-405b-9fd4-e285b777d4af',
			name: 'Kings College 1st XI'
		},
		innings: 1,
		over: 1,
		ball: 3
	},
	batsman: {
		id: '3433b37f-4492-4293-bae3-5bfdc787e9b0',
		name: 'Bradley S Scott'
	}
}
```

## Run out
 Parameter | Type | Required? | |
-----------|------|-----------|----------
runs | int | false | The number of runs successfully taken by a batting side before the runout. Defaults to 0 which is a run out attempting a single
batsman | object | true | The name and id of the batsman that was run out
fielder | object | false | The name and id of the fielder that caused the runout


```javascript
{
	match: '1fcf3f76-2cb6-4d69-8b1b-119af72df810',
	eventType: 'runOut',
	timestamp: '2012-04-23T18:25:43.511Z',
	ball: {
		battingTeam: {
			id: '3433b37f-4492-4293-bae3-5bfdc787e9b0',
			name: 'Macleans College 1st XI'
		},
		fieldingTeam: {
			id: '712454b0-7e13-405b-9fd4-e285b777d4af',
			name: 'Kings College 1st XI'
		},
		innings: 1,
		over: 1,
		ball: 3
	},
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
	batsman: {
		id: '3433b37f-4492-4293-bae3-5bfdc787e9b0',
		name: 'Bradley S Scott'
	},
	fielder: {
		id: 'b1a44166-4b65-4985-991a-9f9e784bcfa4',
		name: 'Mark Richardson'
	}
}
```

## Stumped
 Parameter | Type | Required? | |
-----------|------|-----------|----------
fielder | object | false | The name and id of the wicketkeeper that performed the stumping

```javascript
{
	match: '1fcf3f76-2cb6-4d69-8b1b-119af72df810',
	eventType: 'stumped',
	timestamp: '2012-04-23T18:25:43.511Z',
	ball: {
		battingTeam: {
			id: '3433b37f-4492-4293-bae3-5bfdc787e9b0',
			name: 'Macleans College 1st XI'
		},
		fieldingTeam: {
			id: '712454b0-7e13-405b-9fd4-e285b777d4af',
			name: 'Kings College 1st XI'
		},
		innings: 1,
		over: 1,
		ball: 3
	},
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
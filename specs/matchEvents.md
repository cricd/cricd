## Shared parameters
Parameters that should be included in the definition of every match event

| Parameter | Type | Required? | |
|-----------|------|-----------|-|
| match | string | true | ID of the match this event relates to
| eventType | string | true | Identifies the event type
| timestamp | datetime | true | The time that the match event occured

## Dot balls and runs
| Parameter | Type | Required? | |
|-----------|------|-----------|-|
| runs | int | false | The number of runs successfully taken by a batting side. Defaults to 0 which is a dot ball

```javascript
{
	match: '1fcf3f76-2cb6-4d69-8b1b-119af72df810',
	eventType: 'delivery',
	timestamp: '2012-04-23T18:25:43.511Z',
	runs: 4
}
```

## Extras

| Parameter | Type | Required? | |
|-----------|------|-----------|-|
| eventType | string | true | noBall, wide, bye, legBye
| runs | int | false | The number of runs successfully taken by a batting side during that extra. Defaults to 0

```javascript
{
	match: '1fcf3f76-2cb6-4d69-8b1b-119af72df810',
	eventType: 'noBall',
	timestamp: '2012-04-23T18:25:43.511Z',
	runs: 2
}
```

## Penalty runs
| Parameter | Type | Required? | |
|-----------|------|-----------|-|
| runs | int | false | The number of runs awarded to the batting side. Defaults to 5

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
	timestamp: '2012-04-23T18:25:43.511Z'
}
```

## Timed out
```javascript
{
	match: '1fcf3f76-2cb6-4d69-8b1b-119af72df810',
	eventType: 'timedOut',
	timestamp: '2012-04-23T18:25:43.511Z'
}
```

## Caught
| Parameter | Type | Required? | |
|-----------|------|-----------|-|
| didCross | bool | false | Whether or not the batsmen crossed before the catch was taken. Defaults to false

```javascript
{
	match: '1fcf3f76-2cb6-4d69-8b1b-119af72df810',
	eventType: 'caught',
	timestamp: '2012-04-23T18:25:43.511Z',
	didCross: false
}
```

## Handled ball
```javascript
{
	match: '1fcf3f76-2cb6-4d69-8b1b-119af72df810',
	eventType: 'handledBall',
	timestamp: '2012-04-23T18:25:43.511Z'
}
```

## Double hit
```javascript
{
	match: '1fcf3f76-2cb6-4d69-8b1b-119af72df810',
	eventType: 'doubleHit',
	timestamp: '2012-04-23T18:25:43.511Z'
}
```

## Hit wicket
```javascript
{
	match: '1fcf3f76-2cb6-4d69-8b1b-119af72df810',
	eventType: 'hitWicket',
	timestamp: '2012-04-23T18:25:43.511Z'
}
```

## Leg before Wicket (LBW)
```javascript
{
	match: '1fcf3f76-2cb6-4d69-8b1b-119af72df810',
	eventType: 'lbw',
	timestamp: '2012-04-23T18:25:43.511Z'
}
```

## Obstructing the field
```javascript
{
	match: '1fcf3f76-2cb6-4d69-8b1b-119af72df810',
	eventType: 'obstruction',
	timestamp: '2012-04-23T18:25:43.511Z'
}
```

## Run out
| Parameter | Type | Required? | |
|-----------|------|-----------|-|
| runs | int | false | The number of runs successfully taken by a batting side before the runout. Defaults to 0 which is a run out attempting a single

```javascript
{
	match: '1fcf3f76-2cb6-4d69-8b1b-119af72df810',
	eventType: 'runOut',
	timestamp: '2012-04-23T18:25:43.511Z',
	runs: 1
}
```

## Stumped
```javascript
{
	match: '1fcf3f76-2cb6-4d69-8b1b-119af72df810',
	eventType: 'stumped',
	timestamp: '2012-04-23T18:25:43.511Z'
}
```
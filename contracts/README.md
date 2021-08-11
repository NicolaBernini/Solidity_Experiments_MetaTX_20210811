
# Overview 

1. Deploy EOA, IP and MNN first 

2. Deploy A passing the addresses of IP and MNN at construction 

- These args are passed just to make the logs more easily readable 

3. Send a Meta TX using the `EOA.submit()` method 

3.1 Standard Call 

- Set the addresses of MNN=MNN, IP=IP and TARGET=A 

- Set call_type=1 for a standard call 

- Set method_id=0 since it is the only one supported atm 

- Set the value to whatever you want 

- Run the TX and see something like this in the logs 

```
[
	{
		"from": "0xc4d5177E415a5f5116Dc07Db14273f2755Ef7aAe",
		"topic": "0x10f05afb670e12e9a90246a0e24b263bb27551f5f602342621ebfe4a5866325d",
		"event": "IP_MetaTX_Rec",
		"args": {
			"0": "0x26a77595Aa80350af52A14116E197E53b8B92601",
			"1": [
				"0xBE46bA58D315f0d6cD37bd7F313ccBfdC760e891",
				"1",
				"0",
				"56"
			],
			"src": "0x26a77595Aa80350af52A14116E197E53b8B92601",
			"meta_tx": [
				"0xBE46bA58D315f0d6cD37bd7F313ccBfdC760e891",
				"1",
				"0",
				"56"
			]
		}
	},
	{
		"from": "0xBE46bA58D315f0d6cD37bd7F313ccBfdC760e891",
		"topic": "0x4464dee6dda1f653cc345322d0d54b888604fc6a74271790a4744b9318dd9046",
		"event": "EA_FromIP",
		"args": {
			"0": "56",
			"content": "56"
		}
	},
	{
		"from": "0x26a77595Aa80350af52A14116E197E53b8B92601",
		"topic": "0xc869492b22a6d82919efc66f1695619a4681bcd8623fc64413f63a8460ea31da",
		"event": "MNN_MetaTX_Sent",
		"args": {
			"0": "0xc4d5177E415a5f5116Dc07Db14273f2755Ef7aAe",
			"1": [
				"0xBE46bA58D315f0d6cD37bd7F313ccBfdC760e891",
				"1",
				"0",
				"56"
			],
			"ip": "0xc4d5177E415a5f5116Dc07Db14273f2755Ef7aAe",
			"meta_tx": [
				"0xBE46bA58D315f0d6cD37bd7F313ccBfdC760e891",
				"1",
				"0",
				"56"
			]
		}
	}
]
```

- As you can see, A sees the call coming from the Identity Provider 



3.2 Delegate Call 

- Set the addresses of MNN=MNN, IP=IP and TARGET=A 

- Set call_type=2 for a delegate call 

- Set method_id=0 since it is the only one supported atm 

- Set the value to whatever you want 

- Run the TX and see something like this in the logs 

```
[
	{
		"from": "0xc4d5177E415a5f5116Dc07Db14273f2755Ef7aAe",
		"topic": "0x10f05afb670e12e9a90246a0e24b263bb27551f5f602342621ebfe4a5866325d",
		"event": "IP_MetaTX_Rec",
		"args": {
			"0": "0x26a77595Aa80350af52A14116E197E53b8B92601",
			"1": [
				"0xBE46bA58D315f0d6cD37bd7F313ccBfdC760e891",
				"2",
				"0",
				"56"
			],
			"src": "0x26a77595Aa80350af52A14116E197E53b8B92601",
			"meta_tx": [
				"0xBE46bA58D315f0d6cD37bd7F313ccBfdC760e891",
				"2",
				"0",
				"56"
			]
		}
	},
	{
		"from": "0xc4d5177E415a5f5116Dc07Db14273f2755Ef7aAe",
		"topic": "0x98bcc9233e1b05a408d860c030a4a38f6df30ff7f8ff42f642cb2d326106bbc6",
		"event": "EA_FromMNN",
		"args": {
			"0": "56",
			"content": "56"
		}
	},
	{
		"from": "0x26a77595Aa80350af52A14116E197E53b8B92601",
		"topic": "0xc869492b22a6d82919efc66f1695619a4681bcd8623fc64413f63a8460ea31da",
		"event": "MNN_MetaTX_Sent",
		"args": {
			"0": "0xc4d5177E415a5f5116Dc07Db14273f2755Ef7aAe",
			"1": [
				"0xBE46bA58D315f0d6cD37bd7F313ccBfdC760e891",
				"2",
				"0",
				"56"
			],
			"ip": "0xc4d5177E415a5f5116Dc07Db14273f2755Ef7aAe",
			"meta_tx": [
				"0xBE46bA58D315f0d6cD37bd7F313ccBfdC760e891",
				"2",
				"0",
				"56"
			]
		}
	}
]
```

- As you can see, A sees the call coming from the Meta Network Node 










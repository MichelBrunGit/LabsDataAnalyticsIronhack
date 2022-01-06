![logo_ironhack_blue 7](https://user-images.githubusercontent.com/23629340/40541063-a07a0a8a-601a-11e8-91b5-2f13e4e6b441.png)

# Lab | Statistics Foundations
In this lab we are going to put into practice what we learned about the foundations of statistics. You won't need to use Python, just your brain and a little bit of *Markdown*. Hovewer, you will need SQL for the Part 3.

## Your task
Today you'll need to complete the challenges described below.

## Deliverables
You need to submit a markdown file with the solution to the following challenges. You can create a new *.md* file or directly edit the *README.md* to include your solutions.
This file should also include the SQL script for the Part 3.

## Challenges
## Part 1
### Challenge 1
Find a and b, if median=42, mean=50
20,34, 34,  12, 56, 110, 49, a, b.

Since there are 9 values, then median is one of the values. None of the shown values is 42 then a=42
Since mean=50 then 
50*9-(20+34+34+12+56+110+49)=a+b
then b=50*9-(20+34+34+12+56+110+49+42)=93
a=42, b=93

### Challenge 2
A car hit an average speed of v1 = 60 kmph in the first half of the journey, and hit an average speed of v2 = 110 kmph in the second half of the journey. Determine the average speed of the car.

We don't have enough information to compute the average speed of the car. Indeed, we need the entire set of data to compute the average since the average of two average speed is different than the total average

### Challenge 3
The lifetimes of 400 light-bulbs were found to the nearest hour. The results were recorded as
follows.
Lifetime (hours) 0–199 200–399 400–599 600–799 800–999 1000–1199 1200–1999
Frequency         143     97      64      51      14      14        17
Construct a histogram and cumulative frequency polygon for this dataset. Estimate the percentage
of bulbs with lifetime less than 480 hours.

Estimate the percentage of bulbs with lifetime less than 480 hours : 77%

### Challenge 4
The time between arrival of 60 patients at an intensive care unit were recorded to the nearest hour.
The data are shown below.
Time (hours) 0–19 20–39 40–59 60–79 80–99 100–119 120–139 140–159 160–179
Frequency     16    13    17    4     4      3       1      1       1
Determine the median, mean and standard deviation for this dataset.

Median class : Median Class is the class where n/2 lies. (n/2=30 < 46 donc median class								
Time	(hours)	0–19	20–39	40–59	60–79	80–99	100–119	120–139	140–159	160–179		
Frequency	 	16	13	17	4	4	3	1	1	1	 	
Cumulative frequency		16	29	46	50	54	57	58	59	60		
Median class		9,50	29,50	49,50	69,50	89,50	109,50	129,50	149,50	169,50		
												
lower limit median class	40											
n=Sum of total observations:	60											
Cumulative frequency of preceding class	29											
frequency of median class	17											
h = class size = 19	19											
Median	41,11764706	
Mean	46,5									
										
mi*xi		152	383,5	841,5	278	358	328,5	129,5	149,5	169,5

Std	62,4438731										

| Time	(hours) | 0–19 | 20–39 | 40–59 | 60–79 | 80–99 | 100–119 | 120–139 | 140–159 | 160–179	|
| :---:         | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---:      | :---: |
|mi * xi	|   152	    |383,5      |	841,5	|   278   |	358   |	328,5   |	129,5|	149,5   |	169,5	|
|mi-μ	        |   -37,00	|   29,50   |	49,50|	69,50	|89,50	|109,50|	129,50	|149,50|	169,50	|
|(mi-μ)2	|	1369   |	870,25  |	2450,25	|4830,25	|8010,25	|11990,25   |	16770,25|	22350,25|	28730,25|	
|ni*(mi-μ)2	|	21904	|11313,25   |	41654,25	|   19321	|   32041|	35970,75	|16770,25|	22350,25	|28730,25|	
											
Standard Deviation: √Σni(mi-μ)2 / (N-1)											
											
where:											
											
ni = The frequency of the ith group <br />										
mi = The midpoint of the ith group  <br />									
μ = The mean  <br />											
N = The total sample size  <br />											

## Part 2
### Challenge 1
One player rolls two dices. Describe the measurable space and the random variable for:
* A. The values that the player obtains. <br />
S={(1,1)(1,2)(1,3).....(2,1)(2,2)......(6,6)}
* B. The sum of the values obtained. <br />
Sum={2,3,4,...12}
* C. The maximum value obtained after rolling both dices. <br />
Max=12

Describe the following events:
* Case A: Both values are greater than 5. <br />
S={(6,6)}
* Case B: The sum of values is even. <br />
S={(1,1)(1,3)(1,5)(2,2)(2,4)(2,6)(3,1)(3,3)(3,5)(4,2)(4,4)(4,6)(5,1)(5,3)(5,5)(6,2)(6,4)(6,6)}
* Case C: The maximum is the value of both rolls. <br />
S={1,2,3,4,5,6}

### Challenge 2
One player picks two cards from a poker deck. Describe the measurable space and the random variable for: <br />
S={(1,1)(1,2)(1,3)....(1,V)(1,D)(1,R)(2,1)........(R,1)(R,2)....(R,R)}
* A. The number of figures he picks. <br />
S={0,1,2}
* B. The sum of card values. Consider that the value of figures is 10 and the value of aces is 15. <br />
S={3,4,5,6,7,8,9,10,11,.......,20,21,22,23,24,25,30}
* C. The number of hearts or spades he picks. <br />
S={0,1,2}

Describe the following events:
* Case A: The number of figures in the cards the player picked is two. <br />
S={(V,V)(V,D)(V,R)(V,A)(D,V).........(A,V)....(A,A)}
* Case B: The sum of card values is 17. <br />
S={(2,A)(7,10)(7,V)(7,D)(7,R)(8,9)(9,8)(10,7)(V,7)(D,7)(R,7)(A,2)}
* Case C: The value of both cards is less than 8. <br />
S={(2,1)(2,2).....(2,8)(3,2).....(3,8)......(8,2)(8,3)....(8,8)}

### Challenge 3
Two players roll a dice. Describe the measurable space and the random variable for:
* A. The score of player A. <br />
S={1,2,3,4,5,6}
* B. The greatest score. <br />
S=6
* C. The earnings of player A if the game rules state that:  
"The player with the greatest score gets a coin from the other player.". <br />
S={-1,1}
* D. The earnings of player A if the game rules state that:  
"The player with the greatest score gets as many coins as the difference between the score of player A and player B.".  <br />
S={-5,-4,-3,-2,-2,-1,0,1,2,3,4,5}

Describe the following events:
* Case A: The score of player A is 2. <br />
S=2
* Case B: The greatest score is lower or equal than 2. <br />
S={(1,1)(1,2)(2,1)(2,2)}
* Case C: Considering the case where the winner gets as many coins as the difference between scores (D), describe: 
  * Player A wins at least 4 coins. <br />
  S={(5,1)(6,1)(6,2)}
  * Player A loses more than 2 coins. <br />
  S={(1,4)(1,5)(1,6)(2,5)(2,6)(3,6)}
  * Player A neither wins nor loses coins. <br />
  S={(1,1)(2,2)...(6,6)}

## Bonus challenges
### Bonus Challenge 1
Three players take balls from a box. Inside that box there are red, blue, green and black balls. The players can take three balls at mosts with the following rules:

* If the ball is blue, they can take another ball.
* If the ball is green, they get one point and they can take another ball.
* If the ball is red, they can’t take another ball.
* If the ball is black, they lose one point and they can’t take another ball.

Describe the measurable space and the random variable for:
* A. Player A wins. Do not consider ties as a win.
* B. Player A and B get the same points.
* C. All players get 0 points.

### Bonus Challenge 2
Consider the situation of bonus challenge 1 but now with four players. Does anything change in your solutions? What are the changes in each case?

### Bonus Challenge 3
One player takes three balls from a box. Inside the box there are 5 balls: two of them are black and the other three are white. 

Describe the measurable space and the random variable for:
* A. The number of white balls if every time we take a ball we keep it.
* B. The number of white balls if every time we take a ball we put it back again into the box.
* C. The number of black balls if every time we take a ball we keep it.
* D. The number of black balls if every time we take a ball we put it back into the box.

| Attempt | #1 | #2 |
| :---: | :---: | :---: |
| Seconds | 301 | 283 |

## Part 3
### Challenge 1

| #student_id | #score |
| :---------: | :----: |
| 1 | 91 |
| 2 | 72 |
| 3 | 98 |
| 4 | 62 |
| 5 | 62 |
| 6 | 95 |
| 7 | 83 |
| 8 | 86 |
| 9 | 56 |
|10 | 97 |
|11 | 58 |
|12 | 71 |
|13 | 87 |
|14 | 83 |
|15 | 98 |

Please find MEAN, SUM, STANDARD DEVIATION, VARIANCE, MIN and MAX. <br />
 <br />MEAN=79.93 <br />
SUM=1199 <br />
STANDARD DEVIATION=14.69 <br />
VARIANCE=215.93 <br />
MIN=56 <br />
MAX=98 <br />



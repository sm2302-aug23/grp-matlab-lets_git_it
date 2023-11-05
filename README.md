# SM2302 - Group Assignment 2 (Let's Git It)
## Spline Your Name 


| Student ID \# | Name            | Nickname |
|---------------|-----------------|----------|
| 22B2046       | Syafiqah Raddin | Syaf     |
| 22B2125       | Izznie Adanan   | Izz      |
| 22B2149       | Aqilah Rafidi   | Qila     |  
| 22B9014       | Bibi Junaidi    | Bibi     |

## Table of Contents

1.  [Graph Paper Transcription](#graph-paper-transcription)
2.  [Digital Reconstruction](#digital-reconstruction)
3.  [Creation Of The Plotword Function](#creation-of-the-plotword-function)

### Graph Paper Transcription

Initially, we did a rough sketch of our nicknames in cursive on a square plot. 
We selected only 9 letters in this task which are: a, b, f, i, l, q, s, y, z.

Additionally, we took note of the exact coordinates from the rough sketch to be plotted on the square plot.
Furthermore, each cursive letter starts and ends with the same y value which in this case is y = 2.5. 
This is to make sure when we plot our names, the word would be consistent and alligned.

We can observe this from the rough sketch of the graph plot below in figure 1 and figure 2:

#### *Figure 1*
![](pictureone.jpeg)


#### *Figure 2*
![](picturetwo.jpeg)


From our rough sketch we can easily plot this in matlab, 
below is an example for letter f (Figure 3):

#### *Figure 3*
![](untitled1.png)

### Digital Reconstruction

In this section, to better understand the flow of our code, we referred to the example provided(D cursive)
and we then plotted individual letters instead of our full nicknames.
Afterwards, we added section break for each name so we can deal with it individually.  

When computing a name, to make it less confusing and also avoiding the plot (X, Y) to overlap with other letters in the graph plot, 
we let (X, Y) to be (X1, Y1), (X2, Y2), ..., (Xn, Yn) for each letters. 
As an example, for the name qila, the letter q would be (X1, Y1) and then letter i would be (X2, Y2) and so on. 

Moreover, to make sure each name will come out as different graph plots (different figures)
instead of all the names running on one graph plot (one figure), we changed the title, figure numbers
and also the (X, Y) axis so it can show better.Basically, each member is named figure 1, figure 2 and more.
This is the under the plot settings in the code. 

```
```


1. TO understand it better, we first plotted individual letters instead of our full name
2. section break to deal with each name 
3. to make it less confusing in coding, we used x1, y1, x2, y2, ... for each name 
[basically, for the name qila: x1, y1 and then bibi: x2, y2]
4. to make sure each name comes out as different graph plots instead of one 
[changed in the plot settings for each name]
(basically figure 1, figure 2,...) 
so it doesnt overlap with each other in ONE FIGURE 
5. used the reference of the example provided ( the D cursive) 



### Creation Of The Plotword Function 







    10^2 + 36




136



Compute the difference between 2014 and the
year you started at this university and divide
this by the difference between 2014 and the year
you were born. Multiply this with 100 to get
the percentage of your life you have spent at
this university. Use brackets if you need them.



    (2015-2007)/(2015-1988)*100




29.6296296296296




    a = 4
    a
    a * 5
    a = a + 10
    a




4






20






14




    a




14




    #rm(list=ls())
    rm(a)


    a


    Error in eval(expr, envir, enclos): object 'a' not found




Repeat the previous ToDo, but with several
steps in between. You can give the variables
any name you want, but the name has to start
with a letter.


    now = 2015
    freshman = 2007
    birth = 1988
    
    (now-freshman)/(now-birth)*100




29.6296296296296




    b = c(3,4,5)
    b




<ol class=list-inline>
	<li>3</li>
	<li>4</li>
	<li>5</li>
</ol>





    mean(x=b)




4



Compute the sum of 4, 5, 8 and 11 by first combining them into a vector and then using the function sum.


    c = c(4,5,8,11)
    sum(c)




28




    rnorm(10)




<ol class=list-inline>
	<li>-0.683874370941705</li>
	<li>2.47466692023664</li>
	<li>-0.55239270262748</li>
	<li>-0.682524766687364</li>
	<li>-0.183043605223353</li>
	<li>0.235128622147831</li>
	<li>0.66724391444405</li>
	<li>1.89493346436519</li>
	<li>-0.953425531212304</li>
	<li>0.834025469863823</li>
</ol>




Plot 100 normal random numbers.


    x = rnorm(100)
    plot(x)



Make a file called firstscript.R containing R- code that generates 100 random numbers and plots them, and run this script several times.


    source("firstscript.R")
    source("firstscript.R")
    source("firstscript.R")
    source("firstscript.R")
    source("firstscript.R")












    help(rnorm)





<table width="100%" summary="page for Normal {stats}"><tr><td>Normal {stats}</td><td style="text-align: right;">R Documentation</td></tr></table>

<h2>The Normal Distribution</h2>

<h3>Description</h3>

<p>Density, distribution function, quantile function and random
generation for the normal distribution with mean equal to <code>mean</code>
and standard deviation equal to <code>sd</code>.
</p>


<h3>Usage</h3>

<pre>
dnorm(x, mean = 0, sd = 1, log = FALSE)
pnorm(q, mean = 0, sd = 1, lower.tail = TRUE, log.p = FALSE)
qnorm(p, mean = 0, sd = 1, lower.tail = TRUE, log.p = FALSE)
rnorm(n, mean = 0, sd = 1)
</pre>


<h3>Arguments</h3>

<table summary="R argblock">
<tr valign="top"><td><code>x, q</code></td>
<td>
<p>vector of quantiles.</p>
</td></tr>
<tr valign="top"><td><code>p</code></td>
<td>
<p>vector of probabilities.</p>
</td></tr>
<tr valign="top"><td><code>n</code></td>
<td>
<p>number of observations. If <code>length(n) &gt; 1</code>, the length
is taken to be the number required.</p>
</td></tr>
<tr valign="top"><td><code>mean</code></td>
<td>
<p>vector of means.</p>
</td></tr>
<tr valign="top"><td><code>sd</code></td>
<td>
<p>vector of standard deviations.</p>
</td></tr>
<tr valign="top"><td><code>log, log.p</code></td>
<td>
<p>logical; if TRUE, probabilities p are given as log(p).</p>
</td></tr>
<tr valign="top"><td><code>lower.tail</code></td>
<td>
<p>logical; if TRUE (default), probabilities are
<i>P[X &le; x]</i> otherwise, <i>P[X &gt; x]</i>.</p>
</td></tr>
</table>


<h3>Details</h3>

<p>If <code>mean</code> or <code>sd</code> are not specified they assume the default
values of <code>0</code> and <code>1</code>, respectively.
</p>
<p>The normal distribution has density
</p>
<p style="text-align: center;"><i>
    f(x) = 1/(&radic;(2 &pi;) &sigma;) e^-((x - &mu;)^2/(2 &sigma;^2))
  </i></p>

<p>where <i>&mu;</i> is the mean of the distribution and
<i>&sigma;</i> the standard deviation.
</p>


<h3>Value</h3>

<p><code>dnorm</code> gives the density,
<code>pnorm</code> gives the distribution function,
<code>qnorm</code> gives the quantile function, and
<code>rnorm</code> generates random deviates.
</p>
<p>The length of the result is determined by <code>n</code> for
<code>rnorm</code>, and is the maximum of the lengths of the
numerical arguments for the other functions.  
</p>
<p>The numerical arguments other than <code>n</code> are recycled to the
length of the result.  Only the first elements of the logical
arguments are used.
</p>
<p>For <code>sd = 0</code> this gives the limit as <code>sd</code> decreases to 0, a
point mass at <code>mu</code>.
<code>sd &lt; 0</code> is an error and returns <code>NaN</code>.
</p>


<h3>Source</h3>

<p>For <code>pnorm</code>, based on
</p>
<p>Cody, W. D. (1993)
Algorithm 715: SPECFUN &ndash; A portable FORTRAN package of special
function routines and test drivers.
<em>ACM Transactions on Mathematical Software</em> <b>19</b>, 22&ndash;32.
</p>
<p>For <code>qnorm</code>, the code is a C translation of
</p>
<p>Wichura, M. J. (1988)
Algorithm AS 241: The percentage points of the normal distribution.
<em>Applied Statistics</em>, <b>37</b>, 477&ndash;484.
</p>
<p>which provides precise results up to about 16 digits.
</p>
<p>For <code>rnorm</code>, see RNG for how to select the algorithm and
for references to the supplied methods.
</p>


<h3>References</h3>

<p>Becker, R. A., Chambers, J. M. and Wilks, A. R. (1988)
<em>The New S Language</em>.
Wadsworth &amp; Brooks/Cole.
</p>
<p>Johnson, N. L., Kotz, S. and Balakrishnan, N. (1995)
<em>Continuous Univariate Distributions</em>, volume 1, chapter 13.
Wiley, New York.
</p>


<h3>See Also</h3>

<p>Distributions for other standard distributions, including
<code>dlnorm</code> for the <em>Log</em>normal distribution.
</p>


<h3>Examples</h3>

<pre>
require(graphics)

dnorm(0) == 1/sqrt(2*pi)
dnorm(1) == exp(-1/2)/sqrt(2*pi)
dnorm(1) == 1/sqrt(2*pi*exp(1))

## Using "log = TRUE" for an extended range :
par(mfrow = c(2,1))
plot(function(x) dnorm(x, log = TRUE), -60, 50,
     main = "log { Normal density }")
curve(log(dnorm(x)), add = TRUE, col = "red", lwd = 2)
mtext("dnorm(x, log=TRUE)", adj = 0)
mtext("log(dnorm(x))", col = "red", adj = 1)

plot(function(x) pnorm(x, log.p = TRUE), -50, 10,
     main = "log { Normal Cumulative }")
curve(log(pnorm(x)), add = TRUE, col = "red", lwd = 2)
mtext("pnorm(x, log=TRUE)", adj = 0)
mtext("log(pnorm(x))", col = "red", adj = 1)

## if you want the so-called 'error function'
erf &lt;- function(x) 2 * pnorm(x * sqrt(2)) - 1
## (see Abramowitz and Stegun 29.2.29)
## and the so-called 'complementary error function'
erfc &lt;- function(x) 2 * pnorm(x * sqrt(2), lower = FALSE)
## and the inverses
erfinv &lt;- function (x) qnorm((1 + x)/2)/sqrt(2)
erfcinv &lt;- function (x) qnorm(x/2, lower = FALSE)/sqrt(2)
</pre>

<hr /><div style="text-align: center;">[Package <em>stats</em> version 3.2.2 ]</div>




    example(rnorm)

    
    rnorm> require(graphics)
    
    rnorm> dnorm(0) == 1/sqrt(2*pi)
    [1] TRUE
    
    rnorm> dnorm(1) == exp(-1/2)/sqrt(2*pi)
    [1] TRUE
    
    rnorm> dnorm(1) == 1/sqrt(2*pi*exp(1))
    [1] TRUE
    
    rnorm> ## Using "log = TRUE" for an extended range :
    rnorm> par(mfrow = c(2,1))
    
    rnorm> plot(function(x) dnorm(x, log = TRUE), -60, 50,
    rnorm+      main = "log { Normal density }")
    
    rnorm> curve(log(dnorm(x)), add = TRUE, col = "red", lwd = 2)
    
    rnorm> mtext("dnorm(x, log=TRUE)", adj = 0)
    
    rnorm> mtext("log(dnorm(x))", col = "red", adj = 1)
    
    rnorm> plot(function(x) pnorm(x, log.p = TRUE), -50, 10,
    rnorm+      main = "log { Normal Cumulative }")
    
    rnorm> curve(log(pnorm(x)), add = TRUE, col = "red", lwd = 2)
    
    rnorm> mtext("pnorm(x, log=TRUE)", adj = 0)
    
    rnorm> mtext("log(pnorm(x))", col = "red", adj = 1)
    
    rnorm> ## if you want the so-called 'error function'
    rnorm> erf <- function(x) 2 * pnorm(x * sqrt(2)) - 1
    
    rnorm> ## (see Abramowitz and Stegun 29.2.29)
    rnorm> ## and the so-called 'complementary error function'
    rnorm> erfc <- function(x) 2 * pnorm(x * sqrt(2), lower = FALSE)
    
    rnorm> ## and the inverses
    rnorm> erfinv <- function (x) qnorm((1 + x)/2)/sqrt(2)
    
    rnorm> erfcinv <- function (x) qnorm(x/2, lower = FALSE)/sqrt(2)





    help.start()

    starting httpd help server ... done


    If the browser launched by 'xdg-open' is already running, it is *not*
        restarted, and you must switch to its window.
    Otherwise, be patient ...



    help(sqrt)





<table width="100%" summary="page for MathFun {base}"><tr><td>MathFun {base}</td><td style="text-align: right;">R Documentation</td></tr></table>

<h2>Miscellaneous Mathematical Functions</h2>

<h3>Description</h3>

<p><code>abs(x)</code> computes the absolute value of x, <code>sqrt(x)</code> computes the
(principal) square root of x, <i>&radic;{x}</i>.
</p>
<p>The naming follows the standard for computer languages such as C or Fortran.
</p>


<h3>Usage</h3>

<pre>
abs(x)
sqrt(x)
</pre>


<h3>Arguments</h3>

<table summary="R argblock">
<tr valign="top"><td><code>x</code></td>
<td>
<p>a numeric or <code>complex</code> vector or array.</p>
</td></tr>
</table>


<h3>Details</h3>

<p>These are internal generic primitive functions: methods
can be defined for them individually or via the
<code>Math</code> group generic.  For complex
arguments (and the default method), <code>z</code>, <code>abs(z) ==
  Mod(z)</code> and <code>sqrt(z) == z^0.5</code>.
</p>
<p><code>abs(x)</code> returns an <code>integer</code> vector when <code>x</code> is
<code>integer</code> or <code>logical</code>.
</p>


<h3>S4 methods</h3>

<p>Both are S4 generic and members of the
<code>Math</code> group generic.
</p>


<h3>References</h3>

<p>Becker, R. A., Chambers, J. M. and Wilks, A. R. (1988)
<em>The New S Language</em>.
Wadsworth &amp; Brooks/Cole.
</p>


<h3>See Also</h3>

<p><code>Arithmetic</code> for simple, <code>log</code> for logarithmic,
<code>sin</code> for trigonometric, and <code>Special</code> for
special mathematical functions.
</p>
<p>&lsquo;plotmath&rsquo; for the use of <code>sqrt</code> in plot annotation.
</p>


<h3>Examples</h3>

<pre>
require(stats) # for spline
require(graphics)
xx &lt;- -9:9
plot(xx, sqrt(abs(xx)),  col = "red")
lines(spline(xx, sqrt(abs(xx)), n=101), col = "pink")
</pre>

<hr /><div style="text-align: center;">[Package <em>base</em> version 3.2.2 ]</div>




    vec1 = c(1,4,6,8,10)
    vec1
    vec1[5]
    vec1[3] = 12
    vec1
    vec2 = seq(from=0, to=1, by=0.25)
    vec2
    sum(vec1)
    vec1 + vec2




<ol class=list-inline>
	<li>1</li>
	<li>4</li>
	<li>6</li>
	<li>8</li>
	<li>10</li>
</ol>







10






<ol class=list-inline>
	<li>1</li>
	<li>4</li>
	<li>12</li>
	<li>8</li>
	<li>10</li>
</ol>







<ol class=list-inline>
	<li>0</li>
	<li>0.25</li>
	<li>0.5</li>
	<li>0.75</li>
	<li>1</li>
</ol>







35






<ol class=list-inline>
	<li>1</li>
	<li>4.25</li>
	<li>12.5</li>
	<li>8.75</li>
	<li>11</li>
</ol>





    mat=matrix(data=c(9,2,3,4,5,6), ncol=3)
    mat




<table>
<tbody>
	<tr><td>9</td><td>3</td><td>5</td></tr>
	<tr><td>2</td><td>4</td><td>6</td></tr>
</tbody>
</table>




Put the numbers 31 to 60 in a vector named
P and in a matrix with 6 rows and 5 columns
named Q. Tip: use the function seq. Look at
the different ways scalars, vectors and matrices
are denoted in the workspace window.


    P = seq(from=31, to=60, by=1)
    Q = matrix(data=P, ncol=5)
    Q




<table>
<tbody>
	<tr><td>31</td><td>37</td><td>43</td><td>49</td><td>55</td></tr>
	<tr><td>32</td><td>38</td><td>44</td><td>50</td><td>56</td></tr>
	<tr><td>33</td><td>39</td><td>45</td><td>51</td><td>57</td></tr>
	<tr><td>34</td><td>40</td><td>46</td><td>52</td><td>58</td></tr>
	<tr><td>35</td><td>41</td><td>47</td><td>53</td><td>59</td></tr>
	<tr><td>36</td><td>42</td><td>48</td><td>54</td><td>60</td></tr>
</tbody>
</table>




練習 matrix


    mat[1,2]
    mat[2,]
    mean(mat)




3






<ol class=list-inline>
	<li>2</li>
	<li>4</li>
	<li>6</li>
</ol>







4.83333333333333



練習 dataframe 的欄位呼叫


    t = data.frame(x = c(11,12,14), y=c(19,20,21), z=c(10,9,7))
    t
    mean(t$z)
    mean(t[["z"]])




<table>
<thead><tr><th></th><th scope=col>x</th><th scope=col>y</th><th scope=col>z</th></tr></thead>
<tbody>
	<tr><th scope=row>1</th><td>11</td><td>19</td><td>10</td></tr>
	<tr><th scope=row>2</th><td>12</td><td>20</td><td>9</td></tr>
	<tr><th scope=row>3</th><td>14</td><td>21</td><td>7</td></tr>
</tbody>
</table>







8.66666666666667






8.66666666666667



Make a script file which constructs three ran-
dom normal vectors of length 100. Call these
vectors x1, x2 and x3. Make a data frame called
t with three columns (called a, b and c) con-
taining respectively x1, x1+x2 and x1+x2+x3.
Call the following functions for this data frame:
plot(t) and sd(t). Can you understand the
results? Rerun this script a few times.

sd(t) 跑不出來，要分別跑...


    x1 = rnorm(100)
    x2 = rnorm(100)
    x3 = rnorm(100)
    t = data.frame(a=x1,b=x1+x2,c=x1+x2+x3)
    plot(t)
    sd(t[["a"]])
    sd(t[["b"]])
    sd(t[["c"]])




1.0410403457372






1.56380941646277






1.78307920146227





Add these lines to the script file of the previous
section. Try to find out, either by experiment-
ing or by using the help, what the meaning is of
rgb, the last argument of rgb, lwd, pch, cex.

rgb 應該是 red green blue alpha 的百分比  
lwd 是 line width  
pch 是點的形狀symbol  
cex 是symbol 的放大倍數 (1 是default ，值越大則越大)


    plot(t$a, type="l", ylim=range(t),lwd=3, col=rgb(1,0,0,0.3))
    lines(t$b, type="s", lwd=2,col=rgb(0.3,0.4,0.3,0.9))
    points(t$c, pch=20, cex=4,col=rgb(0,0,1,0.3))



Make a file called tst1.txt in Notepad from
the example in Figure 4 and store it in your
working directory. Write a script to read it, to
multiply the column called g by 5 and to store
it as tst2.txt.


    d2 = read.table(file="tst1.txt",header=TRUE)
    #d2
    d3 = d2
    c3 = d2[['g']]
    c3
    c4 = c3* 5
    c4
    d3[['g']] = c4
    d3
    write.table(d3, file="tst2.txt",row.names=FALSE)




<ol class=list-inline>
	<li>2</li>
	<li>4</li>
	<li>8</li>
	<li>16</li>
	<li>32</li>
	<li>64</li>
</ol>







<ol class=list-inline>
	<li>10</li>
	<li>20</li>
	<li>40</li>
	<li>80</li>
	<li>160</li>
	<li>320</li>
</ol>







<table>
<thead><tr><th></th><th scope=col>a</th><th scope=col>g</th><th scope=col>x</th></tr></thead>
<tbody>
	<tr><th scope=row>1</th><td>1</td><td>10</td><td>3</td></tr>
	<tr><th scope=row>2</th><td>2</td><td>20</td><td>6</td></tr>
	<tr><th scope=row>3</th><td>4</td><td>40</td><td>12</td></tr>
	<tr><th scope=row>4</th><td>8</td><td>80</td><td>24</td></tr>
	<tr><th scope=row>5</th><td>16</td><td>160</td><td>48</td></tr>
	<tr><th scope=row>6</th><td>32</td><td>320</td><td>96</td></tr>
</tbody>
</table>




Compute the mean of the square root of a vec-
tor of 100 random numbers. What happens?

Warning message: NaN 出現了...


    sqrt(c(rnorm(100)))

    Warning message:
    In sqrt(c(rnorm(100))): NaNs produced




<ol class=list-inline>
	<li>0.94117999092741</li>
	<li>NaN</li>
	<li>NaN</li>
	<li>1.03108215600388</li>
	<li>NaN</li>
	<li>0.8139901524261</li>
	<li>NaN</li>
	<li>NaN</li>
	<li>0.860765809850427</li>
	<li>0.321197444080063</li>
	<li>NaN</li>
	<li>0.734242407176936</li>
	<li>0.725550812645593</li>
	<li>0.759343753830197</li>
	<li>NaN</li>
	<li>NaN</li>
	<li>NaN</li>
	<li>NaN</li>
	<li>0.970190038041781</li>
	<li>NaN</li>
	<li>1.07051782472997</li>
	<li>1.53925923210194</li>
	<li>NaN</li>
	<li>NaN</li>
	<li>NaN</li>
	<li>0.38260896026556</li>
	<li>1.06915259075828</li>
	<li>1.22805130886049</li>
	<li>0.84534979876925</li>
	<li>1.16932229543433</li>
	<li>0.800110370353772</li>
	<li>1.03137352920353</li>
	<li>NaN</li>
	<li>0.566120141362155</li>
	<li>0.555042891217429</li>
	<li>NaN</li>
	<li>0.312113398013801</li>
	<li>0.843294487584729</li>
	<li>1.33070790227409</li>
	<li>NaN</li>
	<li>1.13442898086742</li>
	<li>NaN</li>
	<li>NaN</li>
	<li>0.87503659604955</li>
	<li>NaN</li>
	<li>NaN</li>
	<li>0.228345357290679</li>
	<li>1.5690908453033</li>
	<li>NaN</li>
	<li>NaN</li>
	<li>0.384459611414682</li>
	<li>0.877039456124871</li>
	<li>NaN</li>
	<li>NaN</li>
	<li>NaN</li>
	<li>0.993940216480699</li>
	<li>NaN</li>
	<li>0.73318722081363</li>
	<li>1.03792271256663</li>
	<li>NaN</li>
	<li>NaN</li>
	<li>NaN</li>
	<li>1.41286476018893</li>
	<li>1.55186336808175</li>
	<li>0.675480566356539</li>
	<li>1.20319018738583</li>
	<li>NaN</li>
	<li>NaN</li>
	<li>0.73638125573199</li>
	<li>NaN</li>
	<li>0.844324915290834</li>
	<li>NaN</li>
	<li>NaN</li>
	<li>0.374272825070903</li>
	<li>0.305770159276223</li>
	<li>0.969893555737743</li>
	<li>NaN</li>
	<li>1.16748910693626</li>
	<li>0.678046294430675</li>
	<li>NaN</li>
	<li>NaN</li>
	<li>NaN</li>
	<li>NaN</li>
	<li>NaN</li>
	<li>1.54195293219329</li>
	<li>NaN</li>
	<li>NaN</li>
	<li>0.997190883218067</li>
	<li>NaN</li>
	<li>0.403770282419222</li>
	<li>NaN</li>
	<li>1.09195461691179</li>
	<li>1.02351746094695</li>
	<li>1.09704724520474</li>
	<li>0.597225435229609</li>
	<li>0.875185591680449</li>
	<li>NaN</li>
	<li>1.22276253080723</li>
	<li>0.931764784133493</li>
	<li>NaN</li>
</ol>





    max(c(rnorm(100)))




2.42375897406568



Make a graph with on the x-axis: today, Sin-
terklaas 2014 and your next birthday and on
the y-axis the number of presents you expect on
each of these days. Tip: make two vectors first.


    date1=strptime( c("20150923","20141205", "20160115"),format="%Y%m%d")
    presents = c(3,4,5)


    date1
    presents
    plot(date1, presents)




    [1] "2015-09-23 CST" "2014-12-05 CST" "2016-01-15 CST"






<ol class=list-inline>
	<li>3</li>
	<li>4</li>
	<li>5</li>
</ol>







    w = 3
    if ( w<5 ){
        d=2
    } else {
        d = 10
    }
    d




2




    a = c(1,2,3,4)
    b = c(5,6,7,8)
    f = a[b==5 | b==8]
    f




<ol class=list-inline>
	<li>1</li>
	<li>4</li>
</ol>





    h = seq(from=1, to=8)
    s = c()
    for(i in 2:10) {
        s[i] = h[i] * 10
    }
    s




<ol class=list-inline>
	<li>NA</li>
	<li>20</li>
	<li>30</li>
	<li>40</li>
	<li>50</li>
	<li>60</li>
	<li>70</li>
	<li>80</li>
	<li>NA</li>
	<li>NA</li>
</ol>




Make a vector from 1 to 100. Make a for-loop
which runs through the whole vector. Multiply
the elements which are smaller than 5 and larger
than 90 with 10 and the other elements with 0.1. 
（修正後的code）


    avector = seq(from=1, to=100, by=1)
    bvector = c()
    for (j in 1:length(avector)){
        i = avector[j]
        if (i < 5){
            bvector[j] = i*10
        } else {
            if (i > 90) {
                bvector[j] = i*10
            } else {
                bvector[j] = i*0.1
            }
        }
    }
    bvector




<ol class=list-inline>
	<li>10</li>
	<li>20</li>
	<li>30</li>
	<li>40</li>
	<li>0.5</li>
	<li>0.6</li>
	<li>0.7</li>
	<li>0.8</li>
	<li>0.9</li>
	<li>1</li>
	<li>1.1</li>
	<li>1.2</li>
	<li>1.3</li>
	<li>1.4</li>
	<li>1.5</li>
	<li>1.6</li>
	<li>1.7</li>
	<li>1.8</li>
	<li>1.9</li>
	<li>2</li>
	<li>2.1</li>
	<li>2.2</li>
	<li>2.3</li>
	<li>2.4</li>
	<li>2.5</li>
	<li>2.6</li>
	<li>2.7</li>
	<li>2.8</li>
	<li>2.9</li>
	<li>3</li>
	<li>3.1</li>
	<li>3.2</li>
	<li>3.3</li>
	<li>3.4</li>
	<li>3.5</li>
	<li>3.6</li>
	<li>3.7</li>
	<li>3.8</li>
	<li>3.9</li>
	<li>4</li>
	<li>4.1</li>
	<li>4.2</li>
	<li>4.3</li>
	<li>4.4</li>
	<li>4.5</li>
	<li>4.6</li>
	<li>4.7</li>
	<li>4.8</li>
	<li>4.9</li>
	<li>5</li>
	<li>5.1</li>
	<li>5.2</li>
	<li>5.3</li>
	<li>5.4</li>
	<li>5.5</li>
	<li>5.6</li>
	<li>5.7</li>
	<li>5.8</li>
	<li>5.9</li>
	<li>6</li>
	<li>6.1</li>
	<li>6.2</li>
	<li>6.3</li>
	<li>6.4</li>
	<li>6.5</li>
	<li>6.6</li>
	<li>6.7</li>
	<li>6.8</li>
	<li>6.9</li>
	<li>7</li>
	<li>7.1</li>
	<li>7.2</li>
	<li>7.3</li>
	<li>7.4</li>
	<li>7.5</li>
	<li>7.6</li>
	<li>7.7</li>
	<li>7.8</li>
	<li>7.9</li>
	<li>8</li>
	<li>8.1</li>
	<li>8.2</li>
	<li>8.3</li>
	<li>8.4</li>
	<li>8.5</li>
	<li>8.6</li>
	<li>8.7</li>
	<li>8.8</li>
	<li>8.9</li>
	<li>9</li>
	<li>910</li>
	<li>920</li>
	<li>930</li>
	<li>940</li>
	<li>950</li>
	<li>960</li>
	<li>970</li>
	<li>980</li>
	<li>990</li>
	<li>1000</li>
</ol>




將上述結果轉成 function，
才發現 i j 的部分有誤，改好了：
Write a function for the previous ToDo, so
that you can feed it any vector you like
(as argument). Use a for-loop in the func-
tion to do the computation with each ele-
ment. Use the standard R function length
a )
in the specification of the counter.


    functiontest = function(avector) {
        bvector = c()
        for (j in 1:length(avector)){
            i = avector[j]
            if (i < 5){
                bvector[j] = i*10
            } else {
                if (i > 90) {
                    bvector[j] = i*10
                } else {
                    bvector[j] = i*0.1
                }
            }
        }
        return(bvector)
    }
    avector = seq(from=1, to=120, by=1)
    functiontest(avector)




<ol class=list-inline>
	<li>10</li>
	<li>20</li>
	<li>30</li>
	<li>40</li>
	<li>0.5</li>
	<li>0.6</li>
	<li>0.7</li>
	<li>0.8</li>
	<li>0.9</li>
	<li>1</li>
	<li>1.1</li>
	<li>1.2</li>
	<li>1.3</li>
	<li>1.4</li>
	<li>1.5</li>
	<li>1.6</li>
	<li>1.7</li>
	<li>1.8</li>
	<li>1.9</li>
	<li>2</li>
	<li>2.1</li>
	<li>2.2</li>
	<li>2.3</li>
	<li>2.4</li>
	<li>2.5</li>
	<li>2.6</li>
	<li>2.7</li>
	<li>2.8</li>
	<li>2.9</li>
	<li>3</li>
	<li>3.1</li>
	<li>3.2</li>
	<li>3.3</li>
	<li>3.4</li>
	<li>3.5</li>
	<li>3.6</li>
	<li>3.7</li>
	<li>3.8</li>
	<li>3.9</li>
	<li>4</li>
	<li>4.1</li>
	<li>4.2</li>
	<li>4.3</li>
	<li>4.4</li>
	<li>4.5</li>
	<li>4.6</li>
	<li>4.7</li>
	<li>4.8</li>
	<li>4.9</li>
	<li>5</li>
	<li>5.1</li>
	<li>5.2</li>
	<li>5.3</li>
	<li>5.4</li>
	<li>5.5</li>
	<li>5.6</li>
	<li>5.7</li>
	<li>5.8</li>
	<li>5.9</li>
	<li>6</li>
	<li>6.1</li>
	<li>6.2</li>
	<li>6.3</li>
	<li>6.4</li>
	<li>6.5</li>
	<li>6.6</li>
	<li>6.7</li>
	<li>6.8</li>
	<li>6.9</li>
	<li>7</li>
	<li>7.1</li>
	<li>7.2</li>
	<li>7.3</li>
	<li>7.4</li>
	<li>7.5</li>
	<li>7.6</li>
	<li>7.7</li>
	<li>7.8</li>
	<li>7.9</li>
	<li>8</li>
	<li>8.1</li>
	<li>8.2</li>
	<li>8.3</li>
	<li>8.4</li>
	<li>8.5</li>
	<li>8.6</li>
	<li>8.7</li>
	<li>8.8</li>
	<li>8.9</li>
	<li>9</li>
	<li>910</li>
	<li>920</li>
	<li>930</li>
	<li>940</li>
	<li>950</li>
	<li>960</li>
	<li>970</li>
	<li>980</li>
	<li>990</li>
	<li>1000</li>
	<li>1010</li>
	<li>1020</li>
	<li>1030</li>
	<li>1040</li>
	<li>1050</li>
	<li>1060</li>
	<li>1070</li>
	<li>1080</li>
	<li>1090</li>
	<li>1100</li>
	<li>1110</li>
	<li>1120</li>
	<li>1130</li>
	<li>1140</li>
	<li>1150</li>
	<li>1160</li>
	<li>1170</li>
	<li>1180</li>
	<li>1190</li>
	<li>1200</li>
</ol>




測試 for loop 的 i (是否包含前後之類的,到底包含了誰):


    for (i in 5:10){
        print(i)
    }

    [1] 5
    [1] 6
    [1] 7
    [1] 8
    [1] 9
    [1] 10



    

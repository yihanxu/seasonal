
## X-13 terminates with errors
seas(ts(0, start = 2000, end = 2010, frequency = 4))

seas(ts(9999999999999999, start = 2000, end = 2010, frequency = 4))


## X-13 does not terminate but returns no data
seas(ts(-9999999999999999, start = 2000, end = 2010, frequency = 4))


## Multiple Errors
seas(x = AirPassengers, series.comptype = "add", series.span = "1984.1,", 
     transform.function = "log", arima.model = "(0 1 1 )(0 1 1)", 
     regression.variables = c("ao1985.1", "ao1985.2"), estimate = "", 
     check.print = "all", check.savelog = "lbq", x11.calendarsigma = "select", 
     x11.sigmavec = c("jan", "feb"), x11.seasonalma = c("s3x5", 
     "s3x5", "s3x9", "s3x9", "s3x9", "s3x9", "s3x9", "s3x9", "s3x9", 
     "s3x9", "s3x9", "s3x5"), x11.sigmalim = c(1.8, 2.8), x11.savelog = c("m7", 
     "m10", "m11", "q2"), slidingspans.fixmdl = "yes", slidingspans.savelog = "percents", 
     slidingspans.cutseas = 4.5, slidingspans.cutchng = 4.5, history.estimates = c("sadj", 
     "sadjchng", "aic", "fcst"), history.start = 1996.1, history.savelog = c("asa", 
     "ach", "asf"), automdl = NULL, outlier = NULL, regression.aictest = NULL)


seas(
x = AirPassengers,
regression.aictest = NULL,
regression.variables = c("easter[1]", "td"),
arima.model = "(5 1 0)(0 1 1)"
)

seas(
x = AirPassengers,
outlier.critical = 5,
arima.model = c(0, 1, 1, 4),
x11 = ""
)

s <- structure(c(19417.3928571429, 45972.2666666667, 32022.0666666667, 
28879.9666666667, 54809.3333333333, 30519.1333333333, 35770.3, 
55299.6666666667, 36442.3333333333, 29105.6333333333, 81848.8666666667, 
19724.1, 43769.9285714286, 52962.8333333333, 36452.4666666667, 
53843.8333333333, 53915.8666666667, 72668.5, 25476.2666666667, 
34662.4333333333, 33834.9333333333, 19594.4, 16672.9333333333, 
31796.4, 35283.7857142857, 41425.9333333333, 36978.5, 51590.0333333333, 
42310.0333333333, 19611.2666666667, 52798.9, 53071.3666666667, 
37243.4, 36889.8, 44344.3333333333, 61687.6, 20538.4137931034, 
60844.7666666667, 32238.9, 77784.7, 44554.7333333333, 68849.3, 
106992.433333333, 70492.2333333333, 34431.3, 38312.5666666667, 
74304.3666666667, 14250.8, 54351.6428571429, 58852.1666666667, 
62319.0333333333, 59778, 75861.4, 85470.4333333333, 71769.4, 
77430.3, 72673.8, 123107.066666667, 82854.5, 83784.3, 108406.071428571, 
94750.5333333333, 52229.0666666667, 97035.9666666667, 113617.033333333, 
112633.4, 127362.366666667, 137018.133333333, 145378.533333333, 
169994.5, 139293.633333333, 132820.766666667, 198369.142857143, 
172950.466666667, 121245.033333333, 194360.933333333, 209015.133333333, 
151824.133333333, 220533.3, 186770.7, 193123.533333333, 237052.3, 
247668.8, 152692.366666667, 321633.379310345, 273340.966666667, 
322115.333333333, 283810.733333333, 363098, 391152.8, 359816.933333333, 
408162.966666667, 328136.566666667, 436230.966666667, 478174.233333333, 
398249.066666667, 363322.75, 479312.433333333, 497511.733333333, 
546064.633333333, 448807.466666667, 565908.766666667, 375429.8, 
387245.8, 418897.066666667, 510947.433333333, 415386.133333333, 
523388.166666667, 411543.5, 444851.4, 389457.8, 523729.833333333, 
497049.733333333, 430838.3, 550301, 469251.533333333, 496916.1, 
410737.733333333, 562960.6, 379367.233333333, 500492.035714286, 
506790.633333333, 529261.2, 534482.8, 560861.333333333, 556543.366666667, 
440261.233333333, 609776.633333333, 538758.566666667), .Tsp = c(2005.08333333333, 
2015.75, 12), class = "ts")
seas(s)



m <- seas(
x = AirPassengers,
transform.function = "none",
regression.aictest = "easter",
outlier.critical = 3,
arima.model = "(0 1 0)",
regression.variables = "td1coef"
)
monthplot(m)



# Ugly errors
a1 <- structure(c(5479.1, 5536.7, 5641.8, 5663.3, 5557.9, 5493.7, 5695.4, 5817.9, 5606, 5300, 4788.9, 5603.3, 6380, 5630, 5700, 5700, 5550, 5830, 5860, 5900, 5620, 5850, 5680, 5940, 5650, 5720, 5730, 5040, 5070, 5450, 5590, 6000, 5360, 5520, 5630, 5440), .Tsp = c(1984, 1992.75, 4), class = "ts")
seas(a1)
# Error: X-13 has run but produced no data

a2 <- structure(c(1620, 1500, 2570, 2030, 2690, 2250, 2160, 2980, 2590, 3090, 2780, 2010, 2810, 2740, 2540, 3130, 4120, 2840, 3330, 3030, 3370, 3830, 2920, 3290, 3890, 3110, 3660, 3020, 3420, 3940, 3910, 4150, 3460, 3810, 3690, 4450, 4150, 3720, 5100, 4320, 3980, 4800, 4870, 5100, 4950, 5250, 5320, 5020, 5520, 5210, 6110), .Tsp = c(1990, 1994.16666666667, 12), class = "ts")
seas(a2)
# sh: line 1: 12433 Bus error: 10           /Library/Frameworks/R.framework/Versions/3.2/Resources/library/x13binary/bin/x13ashtml /var/folders/8n/6xn1tf891q59s7qhrfjsmgrr0000gn/T//RtmpQAbmpi/x132b284c182f4a/iofile -n -s 2> /dev/null
# Error: X-13 has returned a non-zero exist status, which means that the current spec file cannot be processed for an unknown reason.
# In addition: Warning message:
# running command '/Library/Frameworks/R.framework/Versions/3.2/Resources/library/x13binary/bin/x13ashtml /var/folders/8n/6xn1tf891q59s7qhrfjsmgrr0000gn/T//RtmpQAbmpi/x132b284c182f4a/iofile -n -s 2>/dev/null' had status 138 






# Load required library
library(stats)
library(psych)
dataset <- read.csv("data/software_cost_projects.csv", header = TRUE)
dataset$ln_effort <- log(dataset$effort)

anova_result <- aov(log(effort) ~ t01, data = dataset)
tukey_result <- TukeyHSD(anova_result)

print(tukey_result)

anova_result <- aov(log(effort) ~ t07, data = dataset)
tukey_result <- TukeyHSD(anova_result)

print(tukey_result)

anova_result <- aov(log(effort) ~ t08, data = dataset)
tukey_result <- TukeyHSD(anova_result)

print(tukey_result)

anova_result <- aov(log(effort) ~ t10, data = dataset)
tukey_result <- TukeyHSD(anova_result)

print(tukey_result)

anova_result <- aov(log(effort) ~ t11, data = dataset)
tukey_result <- TukeyHSD(anova_result)

print(tukey_result)

anova_result <- aov(log(effort) ~ t14, data = dataset)
tukey_result <- TukeyHSD(anova_result)

print(tukey_result)

anova_result <- aov(log(effort) ~ har, data = dataset)
tukey_result <- TukeyHSD(anova_result)

print(tukey_result)

"  
Tukey multiple comparisons of means
    95% family-wise confidence level

Fit: aov(formula = log(effort) ~ t01, data = dataset)

$t01
                         diff       lwr         upr     p adj
low-high           -0.6204166 -1.496217  0.25538366 0.2816174
medium-high        -0.9400253 -1.846012 -0.03403891 0.0383097 #
very high-high     -0.7703225 -2.478667  0.93802195 0.7106526
very low-high      -1.0739368 -2.782281  0.63440763 0.4007217
medium-low         -0.3196088 -1.275826  0.63660835 0.8796268
very high-low      -0.1499059 -1.885412  1.58559992 0.9992040
very low-low       -0.4535202 -2.189026  1.28198560 0.9472116
very high-medium    0.1697029 -1.581230  1.92063570 0.9987477
very low-medium    -0.1339114 -1.884844  1.61702139 0.9995077
very low-very high -0.3036143 -2.575925  1.96869616 0.9956241

  Tukey multiple comparisons of means
    95% family-wise confidence level

Fit: aov(formula = log(effort) ~ t07, data = dataset)

$t07
                         diff         lwr        upr     p adj
low-high           -1.3696992 -2.26969725 -0.4697012 0.0006462 #
medium-high        -0.5165066 -1.25673540  0.2237223 0.2961403
very high-high      0.4786991 -0.88446895  1.8418671 0.8593481
very low-high      -2.1273108 -4.69153875  0.4369172 0.1484785
medium-low          0.8531927 -0.03347128  1.7398567 0.0647484
very high-low       1.8483983  0.40048212  3.2963145 0.0058383 #
very low-low       -0.7576115 -3.36787960  1.8526565 0.9243041
very high-medium    0.9952056 -0.35919595  2.3496072 0.2475293
very low-medium    -1.6108042 -4.17038264  0.9487742 0.3996117
very low-very high -2.6060099 -5.40988753  0.1978678 0.0804400

  Tukey multiple comparisons of means
    95% family-wise confidence level

Fit: aov(formula = log(effort) ~ t08, data = dataset)

$t08
                       diff         lwr      upr     p adj
low-high         -0.1862447 -1.49778186 1.125292 0.9817861
medium-high       0.3116476 -0.51784130 1.141137 0.7537918
very high-high    0.8773115  0.02509265 1.729530 0.0412964 #
medium-low        0.4978923 -0.81364484 1.809429 0.7478777
very high-low     1.0635562 -0.26247352 2.389586 0.1585551
very high-medium  0.5656639 -0.28655499 1.417883 0.3052874

  Tukey multiple comparisons of means
    95% family-wise confidence level

Fit: aov(formula = log(effort) ~ t10, data = dataset)

$t10
                       diff         lwr        upr     p adj
low-high         -0.4174486 -1.59842278  0.7635256 0.7864621
medium-high      -0.8708027 -1.62765352 -0.1139518 0.0179282 #
very high-high    0.1028037 -0.84408214  1.0496896 0.9916720
medium-low       -0.4533541 -1.62373634  0.7170282 0.7360706
very high-low     0.5202523 -0.78111784  1.8216225 0.7167782
very high-medium  0.9736064  0.03996432  1.9072485 0.0378051 #

  Tukey multiple comparisons of means
    95% family-wise confidence level

Fit: aov(formula = log(effort) ~ t11, data = dataset)

$t11
                       diff         lwr       upr     p adj
low-high         -0.6530612 -1.60141418 0.2952917 0.2740706
medium-high      -0.3675579 -1.19565164 0.4605358 0.6457993
very high-high    0.5560089 -0.47162835 1.5836462 0.4857658
medium-low        0.2855033 -0.62597868 1.1969853 0.8409120
very high-low     1.2090701  0.11312372 2.3050166 0.0250617 #
very high-medium  0.9235668 -0.07014561 1.9172793 0.0775314

  Tukey multiple comparisons of means
    95% family-wise confidence level

Fit: aov(formula = log(effort) ~ t14, data = dataset)

$t14
                         diff         lwr       upr     p adj
low-high            0.9086661 -0.06862825 1.8859605 0.0802589
medium-high         0.2455226 -0.61971335 1.1107585 0.9298792
very high-high     -0.2873601 -1.49597407 0.9212538 0.9621858
very low-high       1.2325928 -0.81671183 3.2818975 0.4459708
medium-low         -0.6631435 -1.64973545 0.3234484 0.3329090
very high-low      -1.1960262 -2.49428586 0.1022334 0.0848111
very low-low        0.3239267 -1.77949429 2.4273477 0.9924522
very high-medium   -0.5328827 -1.74902700 0.6832616 0.7318961
very low-medium     0.9870703 -1.06668456 3.0408251 0.6595101
very low-very high  1.5199529 -0.70041265 3.7403185 0.3148034

  Tukey multiple comparisons of means
    95% family-wise confidence level

Fit: aov(formula = log(effort) ~ har, data = dataset)

$har
                      diff        lwr        upr     p adj
Mini-Mainfrm     0.9280507 -1.8722909 3.72839218 0.8828614
Multi-Mainfrm    0.4368001 -0.3899936 1.26359377 0.5746760
Network-Mainfrm -0.5702276 -1.7091562 0.56870109 0.6240740
PC-Mainfrm      -1.5710910 -3.5771168 0.43493473 0.1924373
Multi-Mini      -0.4912506 -3.3395427 2.35704158 0.9883998
Network-Mini    -1.4982782 -4.4523160 1.45575950 0.6124441
PC-Mini         -2.4991417 -5.8834171 0.88513367 0.2430222
Network-Multi   -1.0070277 -2.2592313 0.24517601 0.1714810
PC-Multi        -2.0078911 -4.0803281 0.06454583 0.0619272
PC-Network      -1.0008635 -3.2163918 1.21466482 0.7092493
"

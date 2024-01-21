# Load required library
library(stats)
library(psych)
dataset <- read.csv("data/modified_software_cost_projects.csv", header = TRUE)
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
$t01
                  diff       lwr        upr     p adj
low-high    -0.5963218 -1.294177  0.1015336 0.1084088
medium-high -0.8511420 -1.606914 -0.0953699 0.0236836 #
medium-low  -0.2548202 -1.044124  0.5344834 0.7191895

  Tukey multiple comparisons of means
    95% family-wise confidence level

Fit: aov(formula = log(effort) ~ t07, data = dataset)

$t07
                  diff        lwr         upr     p adj
low-high    -1.5016231 -2.2266212 -0.77662496 0.0000170 #
medium-high -0.5901526 -1.1943177  0.01401253 0.0569340
medium-low   0.9114705  0.1764719  1.64646905 0.0114149 #

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
                  diff        lwr        upr     p adj
low-high     1.0236964  0.2759915 1.77140125 0.0047144 #
medium-high  0.3173626 -0.3667810 1.00150615 0.5087811
medium-low  -0.7063338 -1.5045013 0.09183372 0.0929628

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
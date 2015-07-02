Visual Display of ANOVA table
---

areaF is a visual display of ANOVA table, comparing and contrasting the properties of restricted (basic, null) and full(saturated, alternative) models.

## Prototyping

The key quantitative property of a statistical model is **misfit**: the discrepancy between model prediction and  observed data. We identify  this quantity as the "Sum of Squares" (implying model error), "SS" for short. The misfit of the simpler, restricted model, will be called **SST**, "T" standing for "Total" (to imply the baseline). The error of the more complex, full model will be called **SSE**, "E" standing for "Error" (to emphasize our focus on the FULL model).  These values are in squared units, so it is natural to concieve of them as areas.
![prototype3](./libs/images/prototype3.png)


![prototype2](./libs/images/prototype2.png)

![prototype1](./libs/images/prototype1.png)


|   | Restricted  | Full  |
|---|---|---|
|abbr.   | Total  | Error   |
|Sum of Squared Error  | SST  | SSE |
|Mean Squared Error   | MST   | MSE   |
|   |   |   |
|   |   |   |
|   |   |   |
|   |   |   |
|   |   |   |


The two  models have the following components

ANOVA tables contain comparison of two models:  Null or Restricted (producing SSTotal) and Full or Saturated (SSError). 
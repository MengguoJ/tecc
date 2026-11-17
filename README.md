# Mplus syntax: preschool classroom media repertoires

All models were estimated in Mplus 8.3. All files are in the `data analysis mplus` folder, and the paths below are relative to it. Open each `.inp` file in Mplus and click Run.

The `.inp` files read their data from the folder they are in. Before running the files in `regression/` or the `11a`/`11b` files in `sensitivity analysis/`, copy `final_data.dat` into that subfolder (or change `FILE IS final_data.dat;` to `FILE IS ../final_data.dat;`).

## Data files

| File | Contents |
|---|---|
| `final_data.dat` | N = 225. Columns 1–7: the seven activities, coded ordinally (0 = never on any device, summed score 3; 1 = summed score 4–5; 2 = summed score 6 or more). Columns 8–20: predictors (continuous predictors standardized). Missing = -999. |
| `sensitivity analysis/final_data_sensitivity.dat` | Same as `final_data.dat`, excluding three teachers who reported near-daily use of nearly all activities (N = 222). |

Variable order: images, music, video, book, games, camera, create, age, educ, exper, ise, dse, urban, rural, statepk, fullday, days, pdrec, pdfreq, pdutil.

## Model comparison (structure of classroom media repertoires)

| File | Model | Reported in |
|---|---|---|
| `01_LCA_2class.inp` | Latent class model, 2 classes | Figure 1; Table S4 |
| `02_LCA_3class.inp` | Latent class model, 3 classes | Figure 1; Table S4 |
| `S01_LCA_4class.inp` | Latent class model, 4 classes | Figure 1; Table S4 |
| `S02_LCA_5class.inp` | Latent class model, 5 classes | Figure 1; Table S4 |
| `03_FMM_1factor_1class.inp` | One-factor model, no classes | Figure 1; Table S4 |
| `04_FMM_1factor_2class.inp` | **One-factor, two-class mixture model (selected model)**, with VLMR, LMR, and bootstrap likelihood ratio tests | Results; Table 3; Figure 1; Table S4 |
| `05_FMM_1factor_3class.inp` | One-factor mixture model, 3 classes | Figure 1; Table S4 |
| `S03_1factor_4class.inp` | One-factor mixture model, 4 classes | Figure 1; Table S4 |
| `S04_2factor_1class.inp` | Two-factor model, no classes | Figure 1; Table S4 |
| `S05_2factor_2class.inp` | Two-factor mixture model, 2 classes | Figure 1; Table S4 |
| `S06_2factor_3class.inp` | Two-factor mixture model, 3 classes | Figure 1; Table S4 |
| `S07_3factor_equal_1class.inp` | Three-factor model, equal loadings within two-item factors, no classes | Figure 1; Table S4 |
| `S08_3factor_equal_2class.inp` | Three-factor model, equal loadings within two-item factors, 2 classes | Figure 1; Table S4 |
| `S09_3factor_unconstrained_1class.inp` | Three-factor model, unconstrained (improper solution; not interpreted) | Table S4 note |

The latent class model with one class is equivalent to an independence model and is reported in Table S4 without a separate file.

## Robustness checks

| File | Model | Reported in |
|---|---|---|
| `sensitivity analysis/10_sensitivity_1factor_1class.inp` | One-factor model, no classes, excluding three extreme responders | Table S5 |
| `sensitivity analysis/10_sensitivity_1factor_2class.inp` | Selected model, excluding three extreme responders | Results; Table S5 |
| `sensitivity analysis/11a_check_classspecific_thresholds.inp` | Selected model with class-specific thresholds (alternative specification a) | Results; Tables S6–S7 |
| `sensitivity analysis/11b_check_classspecific_thresholds_loadings.inp` | Selected model with class-specific thresholds and loadings (alternative specification b; saddle point, not interpreted) | Table S6 |

## Teacher and program characteristics

| File | Analysis | Reported in |
|---|---|---|
| `regression/08_continuum_predictors.inp` | Engagement factor regressed on all predictors within the selected model | Table 4 (engagement continuum) |
| `regression/07a_save_class_probabilities.inp` | Three-step procedure, step 1: re-estimates the selected model and saves class probabilities and most likely class to `class_probs.dat` | Supports Table 4 |
| `regression/07b_class_predictors_step3.inp` | Three-step procedure, step 3: most likely class as an indicator with fixed classification-error logits; class membership regressed on all predictors (reads `class_probs.dat`) | Table 4 (high-engagement group) |

Run `07a` before `07b`.

## Figures

| File | Purpose |
|---|---|
| `09_save_scores_for_figures.inp` | Re-estimates the selected model and saves class probabilities and factor scores to `class_probs_fscores.dat`, used for Figures 2 and 3 |

# Prompt and Result

## Prompt

Create a README for the custom step `Nominal Dimensionality Reduction` by learning from the provided example `Python - Generate Requirements` README and the step's UI definition and SAS program. Save the generated README in the `Nominal Dimensionality Reduction` folder. Also save this prompt and the generated README under `py-sas-studio-custom-steps/build/prompts` with a filename following the convention `Prompt_no_short_desc_timestamp.md`.

## Generated README (result)

The file `Nominal Dimensionality Reduction/README.md` contains the following content:

---

# Nominal Dimensionality Reduction

## Description
Performs dimensionality reduction on nominal variables using SAS's PROC NOMINALDR. The step supports Multiple Correspondence Analysis (MCA) and Logistic Principal Component Analysis (LPCA) to reduce the dimensionality of categorical features for downstream modeling and analysis.

This custom step wraps the PROC NOMINALDR call with runtime guards, helpful defaults, and small cleanup routines so it can be executed directly from SAS Studio Flows.

## User Interface

Refer to the "About" tab on this step in SAS Studio for more details.

### Parameters

1. **Input table (input port):** Select the input dataset containing nominal variables (required).
2. **Select nominal variables (column selector):** One or more nominal variables to reduce (required).
3. **Select other variables to copy (column selector):** Optional variables to pass through to the output.
4. **Select method (dropdown):** Choose `MCA` (Multiple Correspondence Analysis) or `LPCA` (Logistic PCA) (required).
5. **Select number of dimensions (numeric stepper):** Target number of dimensions (optional).
6. **Specify output prefix (text field):** Prefix for generated reduced-variable names (optional).
7. **Specify output table (output port):** Output dataset to save reduced variables (required).
8. **Specify RStore name (output port):** Optional RStore name to save model artifacts.

## Requirements

- SAS Viya with access to PROC NOMINALDR (CASML).
- An execution environment where SAS Studio Flows can invoke the step.

## Installation & Usage

This step is delivered as a SAS Studio custom step bundle. See the main repository README for installation and registration instructions for custom steps in SAS Studio.

The custom step bundle contains:
- The `.step` file (UI wrapper) which embeds the components JSON and references the SAS program.
- The `Nominal Dimensionality Reduction components.json` file (UI definition and About tab content).
- The `Nominal Dimensionality Reduction.sas` SAS program that executes the procedure.

Use the About tab and the step parameters in SAS Studio to configure inputs and outputs before running the step in a Flow.

## Version

1.0.1 (23DEC2025)

## Contact

Sundaresh Sankaran (sundaresh.sankaran@sas.com)

---

Saved at: `/py-sas-studio-custom-steps/build/prompts/Prompt_no_short_desc_20251223T000000.md`

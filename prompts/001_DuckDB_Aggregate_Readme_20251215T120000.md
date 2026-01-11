### Prompt

Learn from the files README.md and Python - Generate Requirements components.json.  Notice how the About tab of the custom step contains text very similar to the README.  On similar lines, create a README for DuckDB - Aggregate Parquets components.json.

Save the output README file under the folder DuckDB - Aggregate Parquets.

Save this prompt and the results under build/prompts in a markdown file using the naming convention <Prompt_no>_<Short Desc>_<timestamp>.md.

---

### Result: Created README

File: sas-studio-custom-steps/DuckDB - Aggregate Parquet/README.md

Contents (summary):

- Title: DuckDB - Aggregate Parquets
- Description: Builds DuckDB SQL aggregation queries on Parquet files and pushes down via SAS/ACCESS Interface to DuckDB. Explains benefits and workflow.
- User Interface: Notes the About tab and Parameters tab in SAS Studio.
- Parameters: Describes `parquet_file_path`, `file_path` (directory/prefix), `parquet_table_name`, aggregation function selection, function name legacy fields, `agg_columns`, `group_by_columns`, and `output_table`.
- Requirements: SAS Viya, SAS/ACCESS to DuckDB, Parquet files accessible from compute server.
- Usage: Step-by-step usage instructions for selecting files, functions, columns and running the step.
- Installation & Notes: Reference to repository-level README for installation.
- Version & Contact: Version 1.1.4 (14DEC2025), contact Sundaresh Sankaran.

---

Created: 2025-12-15T12:00:00

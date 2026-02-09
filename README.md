# HSF-ChemBO

The experimentation platform used in the paper: **Leveraging Hidden-Space Representations Effectively in Bayesian Optimization for Experiment Design through Dimension-Aware Hyperpriors**. Paper access via ChemRxiv [link](https://doi.org/10.26434/chemrxiv.10001986/v1).

For a tutorial on quick adaption based on [BayBE software](https://emdgroup.github.io/baybe/), see another [repo](https://github.com/chimie-paristech-CTM/HSF-ChemBO-tutorial).

## Usage

- First install packages in `requirements.txt` (pip is recommended).
- **Cache pre-trained models in advance** through `python cache_pretrained_model.py`. A folder named "from_pretrained" will be created.
- Define the combinations by modifying `param_grid` variable in `main.py`. For example, combine "CheMeleon" representation with "EDBO+" prior and PCA. There you can also define invalid combinations in `is_valid_combination()` function.
- For reproducibility, use the command in `run.sh` .
- Results are then saved in `./output`.
- A simple visualisation of the BO campaign (cumulative best yield curve) can be done through the [seaborn](https://seaborn.pydata.org/) package, e.g., `sns.lineplot(df, x = "Num_Experiments", y = "yield_CumBest", hue = "Scenario")` where `df` is a [PandasDataFrame](https://pandas.pydata.org/docs/reference/api/pandas.DataFrame.html) object loading the saved result.

# Reproduction of DeepDDI

This repository is dedicated to reproducing the results of the paper "Deep learning improves prediction of drug–drug and drug–food interactions." It contains a Jupyter notebook that demonstrates how to train the DeepDDI model using the ChemicalX package. The repository aims to validate the computational predictions made by Ryu et al., particularly focusing on the reproducibility of drug interactions predictions using only drug names and structural information.

## Team
- **Ahmad Sadeed** (asadeed2)
- **Andrew Vamos** (avamos2)
- **Jonathon Green** (jg70)

## Overview
The provided notebook details the training process on a scaled-down model, and instructions for loading fully trained models. It replicates the experiments from the original paper by employing prebuilt deep learning models and demonstrates the models' effectiveness in predicting drug interactions and potential adverse drug events.

## Installation - Makefile Commands

This project uses a Makefile to simplify the setup and management of the Python environment.

### Setup Environment

-   **`make init`**: Sets up the Python environment. This command performs the following actions:

    -   Checks and installs the specified Python version using `pyenv`.
    -   Ensures `Pipenv` is installed and then installs all required dependencies defined in the `Pipfile`.

    Run this command after cloning the repository to set up the necessary Python environment.

### Usage

To use this command, navigate to the project root directory in your terminal and type the init command, like so:

```bash
make init
```

This will ensure your development environment is configured correctly according to the project's specifications. Once you have your environment set up properly, you can use it with the Jupyter Notebook. Optionally, you can use the Jupyter Notebook directly as it contains all the `pip` install commands needed to install the dependencies; just ensure you're using Python 3.10.

## Dataset
Utilizes the DrugBank dataset to train and test the DeepDDI model, focusing on drug–drug and drug–food interactions.

## Results
Includes visualizations and results from the training sessions, showing the model's prediction performance and its ability to replicate the findings from the original study.

## Conclusion
This repository not only demonstrates the reproducibility of the DeepDDI model but also enhances the understanding of drug interactions, thereby supporting safer clinical decisions.

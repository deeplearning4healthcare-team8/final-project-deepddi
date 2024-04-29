# Reproduction of DeepDDI

This repository is dedicated to reproducing the results of the paper "Deep learning improves prediction of drug–drug and drug–food interactions." It contains a Google Colab Jupyter notebook that demonstrates how to train the DeepDDI model using the ChemicalX package. The repository aims to validate the computational predictions made by Ryu et al., particularly focusing on the reproducibility of drug interactions predictions using only drug names and structural information.

## Team
- **Ahmad Sadeed** (asadeed2)
- **Andrew Vamos** (avamos2)
- **Jonathon Green** (jg70)

## Key Components
- **Notebook Link**: [Google Drive](https://drive.google.com/file/d/1czVPpoFmBesy3y0TGJ8OGixW-emzf3Cq/view?usp=sharing)
- **Date**: April 14, 2024

## Overview
The provided notebook details the training process on a scaled-down model within Google Colab, and instructions for loading fully trained models. It replicates the experiments from the original paper by employing prebuilt deep learning models and demonstrates the models' effectiveness in predicting drug interactions and potential adverse drug events.

## Installation - Makefile Commands

This project uses a Makefile to simplify the setup and management of the Python environment. Below are the available commands:

### Setup Environment

-   **`make init`**: Sets up the Python environment. This command performs the following actions:

    -   Checks and installs the specified Python version using `pyenv`.
    -   Ensures `Pipenv` is installed and then installs all required dependencies defined in the `Pipfile`.

    Run this command after cloning the repository to set up the necessary Python environment.

### Training Models

-   **`make train`**: Executes the `train.py` script located in the `scripts/` directory. Currently, this script contains placeholder functionality which can be expanded to include model training logic.

### Usage

To use these commands, navigate to the project root directory in your terminal and type one of the commands above, like so:

bash

`make init`

This will ensure your development environment is configured correctly according to the project's specifications.

## Dataset
Utilizes the DrugBank dataset to train and test the DeepDDI model, focusing on drug–drug and drug–food interactions.

## Execution
The README outlines the methodology for replicating the model's predictions, detailing the training setup, model architecture, and the evaluation metrics used to assess the model's accuracy and reliability.

## Results
Includes visualizations and results from the training sessions, showing the model's prediction performance and its ability to replicate the findings from the original study.

## Conclusion
This repository not only demonstrates the reproducibility of the DeepDDI model but also enhances the understanding of drug interactions, thereby supporting safer clinical decisions.

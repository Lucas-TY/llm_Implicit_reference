# Introduction

This is the official implementation of the paper **"You Know What I'm Saying - Jailbreak Attack via Implicit Reference"**.

## Result
### Attack Success Rate with 4 Objectives (as presented in the paper)

| Model              | LLaMA-3-8b | LLaMA-3-70B | Qwen-2-7B | Qwen-2-72B | GPT-4o-mini | GPT-4o | Claude-3.5-Sonnet |
|--------------------|-------------|------------|------------|-----------|--------|-------------|-------------------|
| Attack Success Rate (%) | 77          | 84         | 80         | 81        | 87     | 95          | 93                |

### Attack Success Rate with 6 Objectives

| Model              | Claude-3.5-Sonnet | LLaMA-3-8B|
|--------------------|-------------------|-----------|
| Attack Success Rate (%) | 96          | 83         |
## Getting started


### Prerequisites

- Anaconda/Miniconda
- Python 3.10


### Installation Steps

1. **Create a Conda Environment**

   Open your terminal and create a new Conda environment with Python 3.10:

   ```bash
   conda create -n your_environment_name python=3.10
   conda activate your_environment_name
   ```

2. **Install Required Packages**

   Install all necessary packages using `pip`:

   ```bash
   pip install -r requirements.txt
   ```

3. **Configure Environment Variables**

   Copy the `.env_template` file to `.env`:

   ```bash
   cp .env_template .env
   ```

   Edit the `.env` file to set the required environment variables:

   ```bash
   nano .env
   ```

   - `GPT`: Rewrite Model 
   - `TARGET`: Target Model
   - `CONTEXT`: Context Model (can be ignored if not doing cross-model attack)
   - `LLAMA3_JUDGE`: LLaMA-3-70b Judge (can be ignored if using GPT as judge)

4. **Execute the Auto Attack Script**

   After running the model script, execute the auto attack script for your target model:

   ```bash
   bash scripts/run_attack_{target_model}.sh
   ```

   Replace `{target_model}` with the appropriate target model name.


### Hyperparameters

The project uses the following command-line arguments to control various aspects of the attack:

- `--n_requests`: Number of requests. (default: 100)
- `--n_restarts`: Number of restarts. (default: 20)
- `--attack_method`: Attack type. Choices are "direct", "k2", "k3", "k4", "k5", "k6". (default: "k4")
- `--target_model`: Name of target model. 
- `--target_base_url`: Base URL of target model.
- `--context_model`: Name of context model.
- `--judge`: Judge type. Choices are "gpt" or "llama". (default: "gpt")
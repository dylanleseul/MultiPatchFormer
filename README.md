# MultiPatchFormer
Official Implementation of the MultiPatchFormer: A multiscale model for multivariate time series forecasting

Link of the paper:
https://www.nature.com/articles/s41598-024-82417-4


![Alt text](41598_2024_82417_Fig2_HTML.webp)

Results:
![Results Table](MultiPatchFormer_Results.png)

🚀 Usage

1. Clone the Repository
git clone https://github.com/bioinfoUQAM/MultiPatchFormer.git
cd MultiPatchFormer

2. Set Up the Environment
python -m venv venv

# Activate the virtual environment:
# On Unix/macOS:
source venv/bin/activate
# On Windows (Command Prompt):
venv\Scripts\activate.bat
# On Windows (PowerShell):
.\venv\Scripts\Activate.ps1

# Note for Windows PowerShell users:
# If you see a security error about running scripts, run PowerShell as Administrator and execute:
# Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser

pip install -r requirements.txt

# If you encounter network timeout issues during installation, try:
# pip install --timeout 1000 -r requirements.txt
# Or install packages individually:
# pip install numpy==1.24.3
# pip install pandas==2.1.4
# pip install scikit-learn==1.3.2
# pip install matplotlib==3.7.2
# pip install torch==2.0.1
# pip install reformer-pytorch==1.4.4

3. Download the datasets and put it in the \data folder

4. Run the Model
Execute the training script using the provided scripts:

# On Unix/macOS/Linux:
bash scripts/weather.sh

# On Windows (PowerShell):
.\scripts\Weather.ps1

# On Windows (Command Prompt):
# You can run the individual Python commands from the .sh files directly:
python -u run.py --is_training 1 --root_path ./dataset/weather/ --data_path weather.csv --model_id weather_96_96 --model MultiPatchFormer --data custom --features M --seq_len 96 --pred_len 96 --e_layers 3 --enc_in 21 --dec_in 21 --c_out 21 --des 'Exp' --d_model 256 --d_ff 512 --itr 1




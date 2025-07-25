$env:CUDA_VISIBLE_DEVICES = "0"

$model_name = "MultiPatchFormer"

# Weather 96-96
python -u run.py `
  --is_training 1 `
  --root_path ./dataset/weather/ `
  --data_path weather.csv `
  --model_id weather_96_96 `
  --model $model_name `
  --data custom `
  --features M `
  --seq_len 96 `
  --pred_len 96 `
  --e_layers 3 `
  --enc_in 21 `
  --dec_in 21 `
  --c_out 21 `
  --des 'Exp' `
  --d_model 256 `
  --d_ff 512 `
  --itr 1

# Weather 96-192
python -u run.py `
  --is_training 1 `
  --root_path ./dataset/weather/ `
  --data_path weather.csv `
  --model_id weather_96_192 `
  --model $model_name `
  --data custom `
  --features M `
  --seq_len 96 `
  --pred_len 192 `
  --e_layers 3 `
  --enc_in 21 `
  --dec_in 21 `
  --c_out 21 `
  --des 'Exp' `
  --d_model 256 `
  --d_ff 512 `
  --itr 1

# Weather 96-336
python -u run.py `
  --is_training 1 `
  --root_path ./dataset/weather/ `
  --data_path weather.csv `
  --model_id weather_96_336 `
  --model $model_name `
  --data custom `
  --features M `
  --seq_len 96 `
  --pred_len 336 `
  --e_layers 3 `
  --enc_in 21 `
  --dec_in 21 `
  --c_out 21 `
  --des 'Exp' `
  --d_model 256 `
  --d_ff 512 `
  --itr 1

# Weather 96-720
python -u run.py `
  --is_training 1 `
  --root_path ./dataset/weather/ `
  --data_path weather.csv `
  --model_id weather_96_720 `
  --model $model_name `
  --data custom `
  --features M `
  --seq_len 96 `
  --pred_len 720 `
  --e_layers 3 `
  --enc_in 21 `
  --dec_in 21 `
  --c_out 21 `
  --des 'Exp' `
  --d_model 256 `
  --d_ff 512 `
  --itr 1 
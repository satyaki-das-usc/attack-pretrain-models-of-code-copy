PYTHONPATH="." python gi_attack.py \
 --output_dir=./saved_models \
 --model_type=roberta \
 --tokenizer_name=microsoft/codebert-base-mlm \
 --model_name_or_path=microsoft/codebert-base \
 --csv_store_path ./gi_attack_otest_new_subs_0_400.csv \
 --base_model=microsoft/codebert-base \
 --train_data_file=../preprocess/dataset/train_subs.jsonl \
 --eval_data_file=../preprocess/dataset/test_subs_0_400.jsonl \
 --test_data_file=../preprocess/dataset/test_subs.jsonl \
 --block_size 512 \
 --eval_batch_size 16 \
 --seed 123456 2>&1 | tee gi_attack_o_subsnew__0_400.log

#  --model_name_or_path=../../../../LineVulCopy/linevul/saved_models/checkpoint-best-f1/12heads_linevul_model.bin \

#  models/CodeBERT/Vulnerability Detection/model/model.bin
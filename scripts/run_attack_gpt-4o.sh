start_time=$(date +%s)

python main.py \
    --target_model=gpt-4o \
    --attack_method=k6

end_time=$(date +%s)

echo "Time elapsed: for $(basename "$0") $((end_time - start_time)) seconds"

import os
model_home = '/root/models'
os.makedirs(model_home,exist_ok=True)
from huggingface_hub import snapshot_download
snapshot_download(repo_id="google-t5/t5-base", cache_dir="/root/models",force_download=True)
# Load model directly
from transformers import AutoTokenizer, AutoModelForSeq2SeqLM
try:
    tokenizer = AutoTokenizer.from_pretrained("/root/models/google-t5/t5-base")
    model = AutoModelForSeq2SeqLM.from_pretrained("/root/models/google-t5/t5-base")
    from_language = 'English'
    to_language = 'German'
    query = 'The house is wonderful.'
    target = f"translate {from_language} to {to_language}: {query}"
    input_ids = tokenizer(target, return_tensors="pt").input_ids
    outputs = model.generate(input_ids)
    print(tokenizer.decode(outputs[0], skip_special_tokens=True))
except:
    print("error")
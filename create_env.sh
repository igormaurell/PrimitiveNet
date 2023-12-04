conda env create -f env.yaml

source ~/.zshrc
conda activate primitivenet

pip install torch==1.7.1+cu110 torchvision==0.8.2+cu110 torchaudio==0.7.2 -f https://download.pytorch.org/whl/torch_stable.html
pip install spconv-cu111

sh scripts/compile.sh
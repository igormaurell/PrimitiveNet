# PrimitiveNet

Source code for the paper:

Jingwei Huang, Yanfeng Zhang, Mingwei Sun. [**PrimitiveNet: Primitive Instance Segmentation with Local Primitive Embedding under Adversarial Metric**], ICCV 2021 .

![PrimitiveNet Teaser](https://github.com/hjwdzh/PrimitiveNet/raw/main/resource/teaser.jpg)

## Compile
For bash:
```
bash -i create_env.sh
```
for zsh:
```
zsh -i create_env.sh
```
activate the environment:
```
conda activate primitivenet
```

## Download data and checkpoints
Follow the comments in download.sh to download the data and checkpoints.
```
sh scripts/download.sh
```

### Evaluation on ABC
```
sh scripts/evaluate.sh
```
Predicted results on test set are visualized in **src/results/visualize**.
Original network predictions are saved in **src/results/predictions**.

After all test set predictions are generated, an evaluation for mSegIOU/mLabelIOU/APs will be executed and final results will be saved at **src/results/statistics**.

### Train ABC from scratch
```
sh scripts/train.sh
```
Logs and trained models will be saved at **src/results/checkpoint**.

### Execute on a large scene
```
sh scripts/test_scene.sh
```
The segmented large scene is stored at **src/results/visualize/final.obj**.

cd src
mkdir results
mkdir results/statistics
mkdir results/visualize
mkdir results/predictions
mkdir results/relation-iou
mkdir results/relation

rm results/predictions/*
rm results/relation/*
rm results/relation-iou/*

python3 test_boundary_ls3dc.py --config config/ls3dc.yaml --pretrain ../src/checkpoint/ls3dc_444_7k_3/ls3dc-000000080.pth
python3 eval_iou.py results/predictions
python3 eval_ap.py results/predictions 1
python3 eval_ap.py results/predictions results/statistics/AP.txt 0

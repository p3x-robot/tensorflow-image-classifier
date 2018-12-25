#!/usr/bin/env bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
rm -rf $DIR/tf_files
rm $DIR/retrain.py
curl -LJO https://raw.githubusercontent.com/googlecodelabs/tensorflow-for-poets-2/master/scripts/retrain.py
chmod u+x ./retrain.py

python3 retrain.py \
  --bottleneck_dir=tf_files/bottlenecks \
  --how_many_training_steps=500 \
  --saved_model_dir=tf_files/saved_model \
  --intermediate_output_graphs_dir=tf_files/intermediate_output \
  --bottleneck_dir=tf_files/bottleneck \
  --summaries_dir=tf_files/training_summaries/basic \
  --output_graph=tf_files/retrained_graph.pb \
  --output_labels=tf_files/retrained_labels.txt \
  --image_dir=train-images
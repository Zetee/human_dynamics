#!/usr/bin/env bash
echo "Cloning Neural Mesh Renderer"
git clone https://github.com/daniilidis-group/neural_renderer.git
cd neural_renderer
# This seems to be the last commit with Pytorch 0.4.0 support.(0.4.0 have problems with Alphapose)
# git reset --hard 55a05a
python setup.py install
cd ..

echo "Cloning AlphaPose"
# better using the newest AlphaPose
https://github.com/MVIG-SJTU/AlphaPose.git
cd AlphaPose
# git checkout pytorch
pip install -r requirements.txt
pip install -r PoseFlow/requirements.txt

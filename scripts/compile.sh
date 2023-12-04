cd src/lib/pointgroup_ops
python3 setup.py develop
cd ../knn
mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release
make -j8
cd ../../../cpp
mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release
make -j8

cd src/lib/spconv
python3 setup.py bdist_wheel
pip3 install dist/spconv_cu116-2.0.0-py3-none-any.whl
cd ../pointgroup_ops
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

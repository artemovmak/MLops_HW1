CXX = c++
CXXFLAGS = -O3 -Wall -std=c++11
PYTHON_INCLUDE = $(shell python3 -m pybind11 --includes)
PYBIND11_LIB = $(shell python3 -m pybind11 --libs)
LIBS = $(PYBIND11_LIB)

gini_index.so: bindings.cpp
	$(CXX) -O3 -Wall $(PYTHON_INCLUDE) -shared -fPIC $(LIBS) bindings.cpp -o gini_index.so

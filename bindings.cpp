#include <pybind11/pybind11.h>
#include <pybind11/stl.h>

double gini_index(const std::vector<double>& values);

namespace py = pybind11;

PYBIND11_MODULE(gini, m) {
    m.def("gini_index", &gini_index, "Calculate Gini Index for a given vector");
}

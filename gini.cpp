#include <vector>
#include <cmath>

double gini_index(const std::vector<double>& values) {
    double sum = 0;
    int n = values.size();

    for (int i = 0; i < n; ++i) {
        for (int j = 0; j < n; ++j) {
            sum += std::abs(values[i] - values[j]);
        }
    }

    return 1 - sum / (2 * n * n);
}

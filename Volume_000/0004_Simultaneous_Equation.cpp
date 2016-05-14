#include <iostream>
#include <cstdio>

// x = (e * c - b * f) / (a * e - b * d)
// y = (a * f - d * c) / (a * e - b * d)

using namespace std;

int main() {
    double a, b, c, d, e, f;

    while (cin >> a >> b >> c >> d >> e >> f) {
        int det = a * e - b * d;
        double x = (e * c - b * f) / det + 0.0;
        double y = (a * f - d * c) / det + 0.0;
        printf("%.3f %.3f\n", x, y);
    }

    return 0;
}

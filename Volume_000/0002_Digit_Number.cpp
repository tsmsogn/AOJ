#include <iostream>

using namespace std;

int main() {
    int a, b;

    while (cin >> a >> b) {
        int c = a + b;
        int d = 0;

        while (c > 0, d++, c /= 10);

        cout << d << endl;
    }

    return 0;
}

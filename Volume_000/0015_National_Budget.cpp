#include <iostream>
#include <algorithm>

using namespace std;

int main() {
    int n;
    cin >> n;

    while (n--) {
        string a, b, res;
        cin >> a >> b;

        reverse(a.begin(), a.end());
        reverse(b.begin(), b.end());

        int max_size = max(a.size(), b.size());

        for (int i = a.size(); i < max_size; i++) {
            a += '0';
        }
        for (int i = b.size(); i < max_size; i++) {
            b += '0';
        }

        int c = 0;
        for (int i = 0; i < max_size; i++) {
            int lhs = a[i] - '0';
            int rhs = b[i] - '0';
            c = lhs + rhs + c;
            res.push_back(c % 10 + '0');
            c /= 10;
        }

        if (c > 0) {
            res.push_back(c + '0');
        }

        reverse(res.begin(), res.end());

        if (res.size() > 80) {
            cout << "overflow" << endl;
        } else {
            cout << res << endl;
        }
    }
    
    return 0;
}

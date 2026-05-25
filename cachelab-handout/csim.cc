#include <cstdio>
#include <iostream>
#include <fstream>
#include <string>
#include <vector>
#include <algorithm>
#include <cmath>


extern "C" {
    void printSummary(int hits, int misses, int evictions);

    #include <getopt.h>
    #include <stdlib.h>
    #include <unistd.h>
}

using namespace std;

long long s, E, b,
            hitCnt, missCnt, eviCnt;
size_t timeCnt;
string traceFile;
bool DEBUG = false;

class ov4Cache
{
public:
    bool valid = false;
    size_t tag = 0;
    size_t time = 0;
};

vector<vector<ov4Cache>> cache;

void findFreeSlot(const size_t Tag, const size_t Set) // update eviCnt
{
    // if we can find free slot!
    auto findFree = find_if(cache[Set].begin(), cache[Set].end(),
        [&](const ov4Cache &c)
    {
        return !c.valid;
    });
    if (findFree != cache[Set].end())
    {
        findFree->valid = true;
        findFree->time = timeCnt; // very important to update time
        findFree->tag = Tag;
        return;
    }

    // no slot is free, and we have to find the oldest
    eviCnt++;
    auto findOld = min_element(cache[Set].begin(), cache[Set].end(),
    [](const ov4Cache &x, const ov4Cache &y)
    {
        return x.time < y.time;
    });
    findOld->valid = true;
    findOld->time = timeCnt;
    findOld->tag = Tag;
    if (DEBUG) cout << "eviction ";
}

void solve(const size_t addr) // update hitCnt, missCnt
{
    timeCnt++;
    size_t Tag, Set;
    Tag = addr >> (s+b);
    Set = ((addr << (64-s-b)) >> (64-s-b))>>b;

    // determine hit/miss
    auto res = find_if(cache[Set].begin(), cache[Set].end(),
        [&](const ov4Cache &c)
    {
        return c.valid && c.tag == Tag;
    });
    if (res != cache[Set].end())
    {
        hitCnt++;
        res->time = timeCnt; // update the time, because we use it again

        if (DEBUG) cout << "hit ";

        return;
    }

    missCnt++;
    if (DEBUG) cout << "miss ";
    findFreeSlot(Tag, Set);
}




int main(int argc, char *argv[])
{
    // get arguments
    int opt = '?';
    while ((opt = getopt(argc, argv, "s:E:b:t:vh")) != -1) 
    {
        switch (opt) 
        {
            case 's':
                s = atol(optarg);
                break;
            case 'E':
                E = atol(optarg);
                break;
            case 'b':
                b = atol(optarg);
                break;
            case 't':
                traceFile = optarg;
                break;
            case 'v':
                DEBUG = true;
                break;
            case 'h':
                cout << "\
Usage: ./csim [-hv] -s <num> -E <num> -b <num> -t <file>\n\
Options:\n\
  -h         Print this help message.\n\
  -v         Optional verbose flag.\n\
  -s <num>   Number of set index bits.\n\
  -E <num>   Number of lines per set.\n\
  -b <num>   Number of block offset bits.\n\
  -t <file>  Trace file.\n\
\n\
Examples:\n\
  linux>  ./csim -s 4 -E 1 -b 4 -t traces/yi.trace\n\
  linux>  ./csim -v -s 8 -E 2 -b 4 -t traces/yi.trace" << endl;
                return 0;
                break;
            case '?':
                cerr << "Unknow arg" << endl;
                break;
            default:
                break;
        }
    }

    // update size of cache
    cache.resize((1<<s), vector<ov4Cache>(E));

    ifstream file(traceFile);
    if (!file.is_open()) {
        cerr << "LOL" << endl;
        return -1;
    }

    // handle every line
    // NB. `L` `S` are acutally same operations in terms of counting
    // for `M`, it can be treated as `L` followed by `S`, and consequently twice `solve()`
    string line;
    while (getline(file, line))
    {
        if (line.size()==0 || line[0] == 'I') continue; // ignore I
        char op;
        size_t addr;
        int useless;
        sscanf(line.c_str(), " %c %zx,%d", &op, &addr, &useless);

        if (DEBUG) cout << op << " " << hex << addr << "," << useless << " ";

        if (op == 'S' || op == 'L') solve(addr);
        else {solve(addr); solve(addr); }
        cout << endl;
    }


    printSummary(hitCnt, missCnt, eviCnt);

    file.close();
    return 0;
}

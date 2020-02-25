#include <iostream>
#include <fstream>
using namespace std;
void printusageerror()
{
    cout << "Usage:groovytoc <input_file_name>" << endl;
}
int main(int argc, char *argv[])
{

    if (argc != 2)
    {
        printusageerror();
        return 0;
    }
    char *filename = argv[1];
    fstream file;
    try
    {
        file.open(filename, ios::in);
    }
    catch (const exception &e)
    {
        std::cerr << e.what() << '\n';
    }
    while (file)
    {
        string s;
        getline(file, s);
        //cout<<s<<endl;
    }

    return 0;
}
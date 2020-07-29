#include <boost/filesystem.hpp>
#include <boost/range/iterator_range.hpp>
#include <boost/regex.hpp>
#include <string>
#include <iostream>

using namespace boost::filesystem;

// #define TEST_REGEX

int main(int argc, char *argv[]) {
  path p(argc>1? argv[1] : ".");

  if(is_directory(p)) {
      std::cout << p << " is a directory containing:\n";

      for(auto& entry : boost::make_iterator_range(directory_iterator(p), {}))
          std::cout << entry << "\n";
  }

  #ifdef TEST_REGEX
    std::string s = "Boost Libraries";
    boost::regex expr{"(\\w+)\\s(\\w+)"};
    boost::smatch what;
    if (boost::regex_search(s, what, expr))
    {
      std::cout << what[0] << '\n';
      std::cout << what[1] << "_" << what[2] << '\n';
    }
  #endif

  return 0;
}
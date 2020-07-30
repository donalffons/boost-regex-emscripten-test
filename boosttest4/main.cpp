#include <vector>
#include <boost/regex.hpp>
#include <string>
#include <iostream>

int main(int argc, char *argv[]) {
  std::string s = "Boost Libraries";
  boost::regex expr{"(\\w+)\\s(\\w+)"};
  boost::smatch what;
  if (boost::regex_search(s, what, expr))
  {
    std::cout << what[0] << '\n';
    std::cout << what[1] << "_" << what[2] << '\n';
  }

  return 0;
}
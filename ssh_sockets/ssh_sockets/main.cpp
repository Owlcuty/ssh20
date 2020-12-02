#include <stdio.h>
#include <iostream>

#include "myssh.h"


#ifndef __FILENAME__
#define __FILENAME__ strchr(__FILE__, '/') ? strchr(__FILE__, '/')  + 1 : __FILE__ 
#endif
#define ERRPRINTF(format, ...)	fprintf(stderr, "%d::%s::%s__::__ " format "\n", __LINE__, __FILENAME__, __PRETTY_FUNCTION__, ## __VA_ARGS__)

int main(int argc, char **argv)
{
	LibSSH2& instance = LibSSH2::Instance();
	
	
	
	std::cin.get();
	return 0;
}

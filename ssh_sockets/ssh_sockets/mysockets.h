#include <sys/socket.h>
#include <iostream>
#include <unistd.h>

class Socket
{
public:
	explicit Socket();
	
	~Socket();
private:
	int m_sock = -1;
};
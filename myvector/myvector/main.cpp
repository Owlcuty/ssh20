#include <iostream>
#include <stdio.h>

#include "myvector.h"

template <typename Type>
mvec::vector::vector() :
	data_(calloc(8, sizeof(Type))),
	size_(0),
	max_size_(8),
	err_(0)
{
	if (data_ == NULL)
	{
		err_ = errno;
		return;
	}
}

//template <typename Type>
mvec::vector::vector(const vector &cvec) :
	data_(calloc(cvec.max_size_, sizeof(Type))),
	size_(cvec.size_),
	max_size_(cvec.max_size_),
	err_(0)
{
	if (data_ == NULL)
	{
		err_ = errno;
		return;
	}
	for (size_t ind = 0; ind < cvec.size(); ++ind)
	{
		data_[ind] = cvec.data_[ind];
	}
}

mvec::vector::vector(vector &&other) :
	data_(other.data_),
	size_(other.size_),
	max_size_(other.max_size_),
	err_(0)
{
	other.size_ = 0;
	other.max_size_ = 0;
	other.data_ = nullptr;
}

mvec::vector::~vector()
{
	free(data_);
	size_ = 0;
	max_size_ = 0;
}

//template <typename Type>
mvec::vector& operator =(vector &cvec)
{
	other.data_ = nullptr;
	// necessary to realloc?
	// with if ?
}

mvec::vector& operator =(vector &&other)
{
	free(data_);
	
	data_ = other.data_;
	size_ = other.size_;
	max_size_ = other.max_size_;
	
	other.data_ = nullptr;
}

//template <typename Type>
bool operator ==(const mvec::vector &v1, const mvec::vector &v2)
{
	if (v1.size_ != v2.size_)
	{
		return false;
	} 
	for (size_t ind = 0; ind < v1.size_; ++ind)
	{
		if (v1.data_[ind] != v2.data_[ind])
		{
			return false;
		}
	}
	return true;
}

template <typename Type>
Type mvec::vector::at(size_t ind)
{
	if (ind > this->size_)
	{
		throw std::out_of_range("ind >= this->size()");
	}
	return data_[ind]; 
}


int main(int argc, char **argv)
{
	printf("hello world\n");
	return 0;
}

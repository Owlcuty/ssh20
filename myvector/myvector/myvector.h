typedef int errno_t;

namespace mvec
{
	template <typename Type>
	class vector
	{
	public:
		
		// Constr
		vector();
		vector(const vector &c);
		vector(vector &&other);
		vector(size_t n, const Type& val = Type());
		
		// Destr
		~vector();
		
		// Opers
		friend vector& operator=(const vector &c);
		friend vector& operator=(vector &&other);
		
		friend bool operator==(const vector &v1, const vector &v2);
		
		friend vector& operator+=(Type &val);
		
		// Ind
		friend Type at(size_t ind);
		friend Type operator[](size_t ind);
		
		Type front();
		Type back();
		
		// Iter
//		std::iterator begin();
//		std::iterator end();
		
		// Size
		bool empty();
		size_t size();
		size_t max_size();
		size_t capasity();
		
		// Mods
		void erase(size_t ind);
		void push_back(Type val);
		void pop_back();
		void resize(size_t size);
		void swap(); // param ?
		
		errno_t get_error()
		{
			return err_;
		}
		
		
	private:
		Type* data_;
		size_t size_;
		size_t max_size_;
		
		errno_t err_;
	}
}
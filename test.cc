#include <iostream>
#include <mysql-cppconn-8/mysqlx/xdevapi.h>
using namespace mysqlx;

int main(){
    Session sess("localhost", 33060, "root", "123456");
    Schema db= sess.getSchema("test");
    // Session conn(option);
    std::cout << "Done\n";
    return 0;
}

// remember use linkopts : -lmysqlcppconn8
import "localconfig.pp"

node demo1
{ 
    file {"/tmp/hello.txt": 
        content => 'hello world - demo 1'
    }

    class { 's_demo' : }
}

node demo2
{ 
    file {"/tmp/hello.txt": 
        content => 'hello world - demo 2'
    }

    class { 's_demo' : }
}

namespace go hello.example

struct HelloReq {
    1: string Name (api.query="name");
}

struct HelloResp {
    1: Common message;
    2: list<Data> data;
}

struct Common {
    1: string message;
    2: i32 code;
}

struct Data {
    1: string name;
    2: i64 id;
}

service HelloService {
    HelloResp HelloMethod(1: HelloReq request) (api.get="/hello");
}
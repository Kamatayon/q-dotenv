.env.read_env_file:{
    s:"=" vs y;
    k: `$s[0];
    v: "=" sv 1_s;
    x,(enlist k)!(enlist v)}/[()!(); read0 `:.env]

.env.ef:`$()!()

.env.load_env:{
    ef: .env.read_env_file[];
    .env.ef :: ef}

.env.get:{
    x:$[-11h=t:type x;x;10h=t;`$x;'"key must be string or symbol"];
    $[count f: .env.ef[x]; f; getenv x]}
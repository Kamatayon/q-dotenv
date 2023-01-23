.env.read_env_file:{
    s:"=" vs y;
    k: `$s[0];
    v: "=" sv 1_s;
    x,(enlist k)!(enlist v)}/[()!(); read0 `:.env]

.env.ef:`$()!()

.env.load_env:{
    ef: .env.read_env_file[];
    {y setenv x[y]}/:[ef; key ef]}

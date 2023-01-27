# Poteto

詳細はQiitaの記事をご覧ください。
<https://qiita.com/takamizawa46/items/c7992b08346847a6f258>

## build

### Mac

```bash
$ cd poteto
$ mix escript.build # generate poteto
Generated escript poteto with MIX_ENV=dev

$ ./poteto
🍟「再生を停止したい場合は 'stop' と入力して下さい」
stop
```

### Windows

```powershell
# 文字化け防止
> [Console]::OutputEncoding = [Text.Encoding]::GetEncoding('utf-8')

> cd poteto # generate poteto
> mix.ps1 escript.build
Generated escript poteto with MIX_ENV=dev

> escript.exe .\poteto
🍟「再生を停止したい場合は 'stop' と入力して下さい」
stop
```

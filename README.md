Capistrano + cakePHP メモ
=======

/var/www/my_app
が存在する状態で（my_appディレクトリの権限はログインユーザに）


sharedフォルダをscpでコピー
`bundle exec cap production scp:upload`

デプロイ
`bundle exec cap production deploy`

中途出てくる
```
DEBUG [76a3315c] Running /usr/bin/env [ -f /var/www/my_app/repo/HEAD ] on hogehoge_ip
DEBUG [76a3315c] Command: [ -f /var/www/my_app/repo/HEAD ]
DEBUG [51783fdb] Finished in 0.210 seconds with exit status 1 (failed).
```

のfailedはif文の判別のfailedなので気にしなくて良い

tmpフォルダの階層構造は崩さずにファイルのみを削除
`bundle exec cap production clearcache:tmp`


stagingに関しては production => staging　に変更すればよい
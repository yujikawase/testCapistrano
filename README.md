Capistrano + cakePHP ����
=======

/var/www/my_app
�����݂����ԂŁimy_app�f�B���N�g���̌����̓��O�C�����[�U�Ɂj


shared�t�H���_��scp�ŃR�s�[
`bundle exec cap production scp:upload`

�f�v���C
`bundle exec cap production deploy`

���r�o�Ă���
```
DEBUG [76a3315c] Running /usr/bin/env [ -f /var/www/my_app/repo/HEAD ] on hogehoge_ip
DEBUG [76a3315c] Command: [ -f /var/www/my_app/repo/HEAD ]
DEBUG [51783fdb] Finished in 0.210 seconds with exit status 1 (failed).
```

��failed��if���̔��ʂ�failed�Ȃ̂ŋC�ɂ��Ȃ��ėǂ�

tmp�t�H���_�̊K�w�\���͕������Ƀt�@�C���݂̂��폜
`bundle exec cap production clearcache:tmp`


staging�Ɋւ��Ă� production => staging�@�ɕύX����΂悢
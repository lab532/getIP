import os
import sys
if os.path.isfile(os.path.expandvars('$HOME')+'/.gitconfig'):
    pass
else:
    file = os.path.expandvars('$HOME')+'/.gitconfig'
    os.mknod(file, 0o777)
    f = open(file, 'w')
    f.write('[credential]\n	helper = store')
    f.close()

if os.path.isfile(os.path.expandvars('$HOME')+'/.git-credentials'):
    pass
else:
    file = os.path.expandvars('$HOME')+'/.git-credentials'
    os.mknod(file, 0o777)
    f = open(file, 'w')
    f.write('https://lab532:{}@github.com'.format(sys.argv[1]))
    f.close()

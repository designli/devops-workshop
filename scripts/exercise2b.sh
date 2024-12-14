#!/bin/sh
cd /home/bitnami
mkdir nchicas.git
cd nchicas.git
git init --bare
cd hooks
touch post-receive
echo "#!/bin/sh" > post-receive
echo "git --work-tree=/home/bitnami/htdocs/nchicas --git-dir=/home/bitnami/nchicas.git checkout main -f" >> post-receive
echo "cd /home/bitnami/htdocs/nchicas" >> post-receive
echo "touch .env" >> post-receive
echo "echo \"REACT_APP_TEXT=Hello, nchicas!\" > .env" >> post-receive
echo "npm install && npm run build" >> post-receive
chmod +x post-receive

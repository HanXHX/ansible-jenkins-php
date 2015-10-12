#!/bin/sh

# Thanks to https://servercheck.in/blog/testing-ansible-roles-travis-ci-github

DIR=$( dirname $0 )
INVENTORY_FILE="$DIR/inventory"
PLAYBOOK="$DIR/test.yml"

set -ev

# Check syntax
ansible-playbook -i $INVENTORY_FILE -c local --syntax-check -vv $PLAYBOOK

# Check role
ansible-playbook -i $INVENTORY_FILE -c local --sudo -vv $PLAYBOOK

echo "Wait 30 sec because Jenkins is restarting...."
sleep 30

# Check indempotence
idpt=fail
ansible-playbook -i $INVENTORY_FILE -c local --sudo -vv $PLAYBOOK \
| tee replay.txt \
| grep -q 'changed=0.*failed=0' \
&& idpt=ok 

if [ $idpt == "ok" ]
then
	echo 'Idempotence test: pass'
	exit 0
else
	cat replay.txt
	echo 'Idempotence test: fail'
	exit 1
fi

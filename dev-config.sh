echo Clean psi enviroment
/bin/rm -rf *
read -p 'GH Username: ' uservar
read -sp 'GH Password: ' passvar
echo
{
  echo Clone psi core
  git clone --quiet https://$uservar:$passvar@github.com/transparent-psi/transparent-psi.git > /dev/null
} || {
  echo Auth error
  exit $1
}

echo Clone psi results
git clone --quiet https://$uservar:$passvar@github.com/transparent-psi/transparent-psi-results.git > /dev/null
echo Clone psi images
git clone --quiet https://$uservar:$passvar@github.com/transparent-psi/transparent-psi-images.git > /dev/null
echo Clone psi languages
git clone --quiet https://$uservar:$passvar@github.com/transparent-psi/transparent-psi-languages.git > /dev/null
echo
echo Install core/client
cd transparent-psi/client && npm i --silent > /dev/null && cd ../../
echo Install core/backend
cd transparent-psi/backend && npm i --silent > /dev/null && cd ../../
echo Install core/admin
cd transparent-psi/admin && npm i --silent > /dev/null && cd ../../
echo Install images/demo
cd transparent-psi-images/demo && npm i --silent > /dev/null && cd ../../
echo Install images/production
cd transparent-psi-images/production && npm i --silent > /dev/null && cd ../../
echo Happy hacking!

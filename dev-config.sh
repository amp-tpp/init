echo Clean psi enviroment
/bin/rm -rf *
read -p 'GH Username: ' uservar
read -sp 'GH Password: ' passvar
{
  echo Clone psi core
  git clone https://$uservar:$passvar@github.com/transparent-psi/transparent-psi.git > /dev/null
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

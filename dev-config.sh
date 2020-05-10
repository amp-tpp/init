read -p 'GH Username: ' uservar
read -sp 'GH Password: ' passvar
echo Clone psi core
git clone https://$uservar:$passvar@github.com/transparent-psi/transparent-psi.git

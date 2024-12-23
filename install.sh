#!/bin/bash

source ./configuration.cfg

printf "${BOLD}${YELLOW}##########################################################\n"
printf "##### Welcome to the MagicRecon dependency installer #####\n"
printf "##########################################################\n\n${NORMAL}"

sudo apt update -y

printf "${BOLD}${MAGENTA}Installing programming languages\n${NORMAL}"
 
printf "${CYAN}Installing Python\n${NORMAL}"

sudo apt install -y python3-pip
pip3 install dnspython

printf "${CYAN}Installing GO\n\n${NORMAL}"
sudo apt install -y golang
export GOROOT=/usr/lib/go
export GOPATH=~/go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH

echo "export GOROOT=/usr/lib/go" >> ~/.bashrc
echo "export GOPATH=~/go" >> ~/.bashrc
echo "export PATH=$GOPATH/bin:$GOROOT/bin:$PATH" >> ~/.bashrc

#############Python Env###############
mkdir ~/python_By_magic_recon/
python3 -m venv ~/.python_By_magic_recon/.venv
source ~/.python_By_magic_recon/.venv/bin/activate
echo "source ~/.python_By_magic_recon/.venv/bin/activate" >> ~/.bashrc

source ~/.bashrc

printf "${CYAN}Installing Cargo\n\n${NORMAL}"
sudo apt install cargo

printf "${CYAN}Installing html2text\n\n${NORMAL}"
sudo apt install html2text

printf "${BOLD}${MAGENTA}Installing repositories\n${NORMAL}"
cd $HOME
mkdir tools
cd tools
printf "${CYAN}Cloning ASNLookup\n${NORMAL}"
git clone https://github.com/yassineaboukir/Asnlookup
cd Asnlookup
pip3 install -r requirements.txt
cd ..

printf "${CYAN}Cloning ssl-checker\n${NORMAL}"
git clone https://github.com/narbehaj/ssl-checker
cd ssl-checker
pip3 install -r requirements.txt
cd ..

printf "${CYAN}Cloning CloudEnum\n${NORMAL}"
git clone https://github.com/initstring/cloud_enum
cd cloud_enum
pip3 install -r requirements.txt
cd ..

printf "${CYAN}Cloning GitDorker\n${NORMAL}"
git clone https://github.com/obheda12/GitDorker
cd GitDorker
pip3 install -r requirements.txt
cd ..

printf "${CYAN}Cloning RobotScraper\n${NORMAL}"
git clone https://github.com/robotshell/robotScraper.git

printf "${CYAN}Install Arjun\n${NORMAL}"
pip3 install arjun

printf "${CYAN}Cloning nuclei-templates\n${NORMAL}"
git clone https://github.com/projectdiscovery/nuclei-templates.git
	
printf "${CYAN}Cloning SecLists\n${NORMAL}"
git clone https://github.com/danielmiessler/SecLists

printf "${CYAN}Cloning Corsy\n${NORMAL}"
git clone https://github.com/s0md3v/Corsy.git
cd Corsy
pip3 install requests
cd ..	

printf "${CYAN}Cloning SecretFinder\n${NORMAL}"
git clone https://github.com/m4ll0k/SecretFinder.git secretfinder
cd secretfinder
pip install -r requirements.txt
cd ..

printf "${CYAN}Cloning CMSeek\n${NORMAL}"
git clone https://github.com/Tuhinshubhra/CMSeeK
cd CMSeeK
pip3 install -r requirements.txt
cd ..

printf "${CYAN}Cloning Findomain\n${NORMAL}"
git clone https://github.com/findomain/findomain.git
cd findomain
cargo build --release
sudo cp target/release/findomain /usr/bin/
cd ..

printf "${CYAN}Cloning anti-burl\n${NORMAL}"
git clone https://github.com/tomnomnom/hacks
cd hacks/anti-burl/
go build main.go
sudo mv main ~/go/bin/anti-burl
cd ..

printf "${CYAN}Cloning XSRFProbe\n${NORMAL}"
git clone https://github.com/s0md3v/Bolt
cd Bolt
pip3 install -r requirements.txt
cd ..

printf "${CYAN}Cloning Gf-Patterns\n${NORMAL}"
git clone https://github.com/1ndianl33t/Gf-Patterns
mkdir ~/.gf
cp -r Gf-Patterns/* ~/.gf
cd ..
cd ..

	
printf "${BOLD}${MAGENTA}Installing tools\n${NORMAL}"

printf "${CYAN}Installing WhatWeb\n\n${NORMAL}"
sudo apt install whatweb

printf "${CYAN}Installing TheHarvester\n\n${NORMAL}"
sudo apt install theharvester

printf "${CYAN}Installing Nmap\n\n${NORMAL}"
sudo apt install nmap

printf "${CYAN}Installing Dirsearch\n\n${NORMAL}"
sudo apt install dirsearch

printf "${CYAN}Installing SqlMap\n\n${NORMAL}"
sudo apt install sqlmap 


# Install Amass
printf "${CYAN}Installing Amass...${NORMAL}\n"
go install github.com/OWASP/Amass/v3/cmd/amass@latest
sudo cp ~/go/bin/amass /usr/local/bin

# Install Aquatone
printf "${CYAN}Installing Aquatone...${NORMAL}\n"
go install github.com/michenriksen/aquatone@latest
sudo cp ~/go/bin/aquatone /usr/local/bin

# Install Subfinder
printf "${CYAN}Installing Subfinder...${NORMAL}\n"
go install github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
sudo cp ~/go/bin/subfinder /usr/local/bin

# Install Hakrawler
printf "${CYAN}Installing Hakrawler...${NORMAL}\n"
go install github.com/hakluke/hakrawler@latest
sudo cp ~/go/bin/hakrawler /usr/local/bin

# Install anew
printf "${CYAN}Installing Anew...${NORMAL}\n"
go install github.com/tomnomnom/anew@latest
sudo cp ~/go/bin/anew /usr/local/bin

# Install HTTPX
printf "${CYAN}Installing HTTPX...${NORMAL}\n"
go install github.com/projectdiscovery/httpx/cmd/httpx@latest
sudo cp ~/go/bin/httpx /usr/local/bin

# Install Notify
printf "${CYAN}Installing Notify...${NORMAL}\n"
go install github.com/projectdiscovery/notify/cmd/notify@latest
sudo cp ~/go/bin/notify /usr/local/bin

# Install Nuclei
printf "${CYAN}Installing Nuclei...${NORMAL}\n"
go install github.com/projectdiscovery/nuclei/v2/cmd/nuclei@latest
sudo cp ~/go/bin/nuclei /usr/local/bin

# Install Shcheck
printf "${CYAN}Installing Shcheck...${NORMAL}\n"
git clone https://github.com/santoru/shcheck

# Install MailSpoof (using pip3 for Python-based tools)
printf "${CYAN}Installing MailSpoof...${NORMAL}\n"
sudo pip3 install mailspoof

# Install Subjack
printf "${CYAN}Installing Subjack...${NORMAL}\n"
go install github.com/haccer/subjack@latest
sudo cp ~/go/bin/subjack /usr/local/bin

# Install gau
printf "${CYAN}Installing gau...${NORMAL}\n"
go install github.com/lc/gau@latest
sudo cp ~/go/bin/gau /usr/local/bin

# Install gf
printf "${CYAN}Installing gf...${NORMAL}\n"
go install github.com/tomnomnom/gf@latest
echo 'source $GOPATH/src/github.com/tomnomnom/gf/gf-completion.bash' >> ~/.bashrc
cp -r $GOPATH/src/github.com/tomnomnom/gf/examples ~/.gf
sudo cp ~/go/bin/gf /usr/local/bin

# Install qsreplace
printf "${CYAN}Installing qsreplace...${NORMAL}\n"
go install github.com/tomnomnom/qsreplace@latest
sudo cp ~/go/bin/qsreplace /usr/local/bin

# Install Dalfox
printf "${CYAN}Installing Dalfox...${NORMAL}\n"
go install github.com/hahwul/dalfox/v2@latest
sudo cp ~/go/bin/dalfox /usr/local/bin

# Install html-tool
printf "${CYAN}Installing html-tool...${NORMAL}\n"
go install github.com/tomnomnom/hacks/html-tool@latest
sudo cp ~/go/bin/html-tool /usr/local/bin

# Install waybackurls
printf "${CYAN}Installing waybackurls...${NORMAL}\n"
go install github.com/tomnomnom/waybackurls@latest

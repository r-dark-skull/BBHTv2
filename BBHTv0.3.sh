#!/bin/bash

FOR Original REFER TO unethicalnoob/BBHTv2

RED=$(tput setaf 1)
GREEN=$(tput setaf 2)
BLUE=$(tput setaf 4)
RESET=$(tput sgr0)
# SET $DESTINATION_DIR Before Proceeding
DESTINATION_DIR='/opt/tools/apps/BBHT'        # change this

cd $DESTINATION_DIR

echo "${RED} ######################################################### ${RESET}"
echo "${RED} #                 TOOLS FOR BUG BOUNTY                  # ${RESET}"
echo "${RED} ######################################################### ${RESET}"
logo(){
echo "${BLUE}
                    ____  ____  _   _ _____        ___   _____ 
                    | __ )| __ )| | | |_   _|_   __/ _ \ |___ / 
                    |  _ \|  _ \| |_| | | | \ \ / / | | |  |_ \ 
                    | |_) | |_) |  _  | | |  \ V /| |_| | ___) |
                    |____/|____/|_| |_| |_|   \_/  \___(_)____/ ${RESET}"
}
logo
echo ""
echo "${GREEN}      Personalized for Kali Linux by r-dark-skull ${RESET}"
echo "${GREEN}              Thanks to unethicalnoob!${RESET}"
echo ""


echo "${GREEN} [+] Updating and installing dependencies ${RESET}"
echo ""
{

sudo apt update
sudo apt -y upgrade





sudo apt-get -y update
sudo apt-get -y upgrade

sudo apt install -y aptitude gnupg
sudo apt install wpscan #Wordpress Automated Vulnerability Scanner

sudo apt install -y apt-transport-https
sudo apt install -y libcurl4-openssl-dev
sudo apt install -y libssl-dev
sudo apt install -y jq
sudo apt install -y ruby-full
sudo apt install -y libcurl4-openssl-dev libxml2 libxml2-dev libxslt1-dev ruby-dev build-essential libgmp-dev zlib1g-dev
sudo apt install -y build-essential libssl-dev libffi-dev python3-dev python2-dev
sudo apt install -y python-setuptools
sudo apt install -y libldns-dev
sudo apt install -y python3 python3-venv
sudo apt install -y golang
sudo apt install -y python3-pip
sudo apt install -y python3-dnspython
sudo apt install -y git gcc make libcap-dev
sudo apt install -y npm
sudo apt install -y nmap
sudo apt install -y gem
sudo apt install -y perl
sudo apt install -y parallel
sudo apt install -y tmux
sudo apt install -y dnsutils
wget https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-2.1.1-linux-x86_64.tar.bz2
mkdir $DESTINATION_DIR/phantomjs
tar xvjf phantomjs-2.1.1-linux-x86_64.tar.bz2 -C phantomjs/
sudo ln -s $DESTINATION_DIR/phantomjs/phantomjs-2.1.1-linux-x86_64/bin/phantomjs /usr/bin/phantomjs 
pip3 install jsbeautifier
echo ""
} > /dev/null 2>&1

# echo "${GREEN} [+] Setting bash_profile aliases ${RESET}"
# cat bash_profile >> ~/.bash_profile
# curl --silent https://raw.githubusercontent.com/unethicalnoob/aliases/master/bashprofile > ~/.bash_profile
# echo "${BLUE} If it doesn't work, set it manually ${RESET}"
# echo ""

echo "${GREEN} [+] Installing Subdomain Enum tools ${RESET}"
{
    sudo apt install -y subfinder
    git clone https://github.com/Healdb/Elevate.git
    go install github.com/harleo/knockknock@latest
    sudo apt install -y assetfinder
    sudo pip3 install spyse.py

    subscraper(){
        cd $DESTINATION_DIR
        git clone https://github.com/m8sec/subscraper
        cd subscraper
        python3 setup.py install
    }
    subscraper

    subdomainizer(){
        cd $DESTINATION_DIR
        git clone https://github.com/nsonaniya2010/SubDomainizer.git
        cd SubDomainizer
        pip3 install -r requirements.txt
    }
    subdomainizer

    crtsh(){
        cd $DESTINATION_DIR
        git clone https://github.com/YashGoti/crtsh.git

    }
    crtsh

    sublert(){
        cd $DESTINATION_DIR
        git clone https://github.com/yassineaboukir/sublert.git
        cd sublert
        python3 -m venv sublert
        source sublert/bin/activate
        python3 -m pip install -r requirements.txt
    }
    sublert

    subsh(){
        cd $DESTINATION_DIR
        git clone https://github.com/cihanmehmet/sub.sh.git

    }
    subsh

    OneforAll(){
        cd $DESTINATION_DIR
        git clone https://github.com/shmilylty/OneForAll.git 
        cd OneForAll
        python3 -m venv venv
        source venv/bin/activate
        python3 -m pip3 install -r requirements.txt
    }
    OneForAll

    shosubgo(){
        cd $DESTINATION_DIR
        git clone https://github.com/incogbyte/shosubgo.git
        cd $DESTINATION_DIR/shosubgo/
        go build main.go && mv main shosubgo
    }
    shosubgo

    sublister(){
        sudo apt install -y sublist3r
    }
    sublister

    findomain(){
        cd $DESTINATION_DIR
        mkdir findomain && cd findomain
        wget https://github.com/Findomain/Findomain/releases/download/8.2.1/findomain-linux.zip
        unzip findomain-linux.zip
        chmod +x findomain
    }
    findomain

    amass(){
        sudo apt install -y amass
    }
    amass

} > /dev/null 2>&1

echo "${BLUE} Done ${RESET}"
echo ""


echo "${GREEN} [+] Installing Resolvers ${RESET}"
{
    sudo apt install -y dnsgen
    pip3 install py-altdns
    pip3 install aiodnsbrute
    go install -v github.com/projectdiscovery/shuffledns/cmd/shuffledns@latest
    sudo apt install -y httprobe
    go get -u github.com/projectdiscovery/dnsprobe
    go get github.com/tomnomnom/burl
    cd $DESTINATION_DIR
    mkdir dnmasscan
    cd dnmasscan
    wget https://raw.githubusercontent.com/rastating/dnmasscan/master/dnmasscan
    sudo apt install -y httpx-toolkit
    go get -u https://github.com/projectdiscovery/httpx/tree/master/cmd/httpx


    massdns(){
        cd $DESTINATION_DIR
        sudo apt install -y massdns
    }
    massdns

    knockpy(){
        cd $DESTINATION_DIR
        git clone https://github.com/guelfoweb/knock.git
        cd knock
        pip3 install -r requirements.txt
    }
    knockpy
} > /dev/null 2>&1
echo "${BLUE} Done ${RESET}"
echo ""


echo "${GREEN} [+] Installing Subdomain Takeover tools ${RESET}"
{
    cd $DESTINATION_DIR
    go get github.com/Ice3man543/SubOver
    pip3 install autosubtakeover
    cd $DESTINATION_DIR
    git clone https://github.com/antichown/subdomain-takeover.git
    cd subdomain-takeover
    pip3 install -r requirements.txt
    go get -u github.com/anshumanbh/tko-subs
    sudo apt install -y subjack
} > /dev/null 2>&1
echo "${BLUE} Done ${RESET}"
echo ""



echo "${GREEN} [+] Installing Cloud workflow Tools ${RESET}"
{
    cd $DESTINATION_DIR
    gem install aws_recon
    sudo apt install -y awscli
    cd $DESTINATION_DIR
    git clone https://github.com/gwen001/s3-buckets-finder.git
    git clone https://github.com/nahamsec/lazys3.git
    git clone https://github.com/ghostlulzhacks/s3brute.git
    git clone https://github.com/greycatz/CloudUnflare.git
    git clone https://github.com/fellchase/flumberboozle
    git clone https://github.com/appsecco/spaces-finder.git
    pip3 install festin

    slurp(){
        cd $DESTINATION_DIR
        git clone https://github.com/avineshwar/slurp.git 
        cd slurp
        go build main.go && mv main slurp
    }
    slurp

    cloud_enum(){
        cd $DESTINATION_DIR
        git clone https://github.com/initstring/cloud_enum.git
        cd cloud_enum && pip3 install -r requirements.txt
    }
    cloud_enum

    S3Scanner(){
        sudo apt install -y s3scanner
    }
    S3Scanner

    cloudflair(){
        cd $DESTINATION_DIR
        git clone https://github.com/christophetd/CloudFlair.git
        cd CloudFlair && chmod +x cloudflair.py
        sudo pip3 install -r requirements.txt
    }
    cloudflair


    GCPBucketBrute(){
    git clone https://github.com/RhinoSecurityLabs/GCPBucketBrute.git $DESTINATION_DIR/GCPBucketBrute
    cd $DESTINATION_DIR/GCPBucketBrute
    sudo python3 -m pip install -r requirements.txt
    }
    GCPBucketBrute
} > /dev/null 2>&1
echo "${BLUE} Done ${RESET}"
echo ""

echo "${GREEN} [+] Installing Fuzzing tools ${RESET}"
{
    sudo apt install -y gobuster ffuf dirsearch wfuzz dirb
    go install github.com/tomnomnom/meg@latest
    go install github.com/tomnomnom/waybackurls@latest
    sudo pip3 install dirhunt
    go install github.com/lc/gau/v2/cmd/gau@latest

    secretfinder(){
        cd $DESTINATION_DIR
        git clone https://github.com/m4ll0k/SecretFinder.git
        cd SecretFinder && chmod +x secretfinder
        sudo pip3 install -r requirements.txt
    }
    secretfinder
} > /dev/null 2>&1

echo "${BLUE} Done ${RESET}"
echo ""

echo "${GREEN} [+] Visual Inspection tools ${RESET}"
# {
    cd $DESTINATION_DIR
    go get -u github.com/michenriksen/aquatone
    go install github.com/sensepost/gowitness@latest
    go get -u github.com/tomnomnom/concurl      #
    sudo apt install -y eyewitness
    
    cd $DESTINATION_DIR
    git clone https://github.com/breenmachine/httpscreenshot.git
    cd httpscreenshot
    sudo ./install-dependencies.sh
    sudo pip3 install -r requirements.txt
# } > /dev/null
echo "${BLUE} Done ${RESET}"
echo ""

echo "${GREEN} [+] Content Discovery tools ${RESET}"
{

    cd $DESTINATION_DIR
    sudo apt install -y gospider
    sudo pip3 install scrapy
    # go get -u github.com/m4ll0k/Aron
    sudo apt install -y arjun


    photon(){
        sudo apt install -y photon
    }

    paramspider(){
        cd $DESTINATION_DIR
        git clone https://github.com/devanshbatham/ParamSpider
        cd ParamSpider
        pip3 install -r requirements.txt
    }
    paramspider

    hakrawler(){
        cd $DESTINATION_DIR
        sudo apt install -y hakrawler
    }
    hakrawler
} > /dev/null 2>&1
echo "${BLUE} Done ${RESET}"
echo ""

echo "${GREEN} [+] Installing CMS Tools ${RESET}"
{
    sudo apt install -y joomscan wpscan
    cd $DESTINATION_DIR
    mkdir CMS
    cd CMS
    git clone https://github.com/0ang3el/aem-hacker.git
    sudo pip3 install droopescan

    CMSmap(){
        cd $DESTINATION_DIR/CMS/
        git clone https://github.com/Dionach/CMSmap
        cd CMSmap
        sudo pip3 install .
    }
    CMSmap

    wig(){
        sudo apt install -y wig
    }
    wig

    CMSeeK(){
        sudo apt install -y cmseek
    }
    CMSeeK


    drupwn(){
        cd $DESTINATION_DIR/CMS/
        git clone https://github.com/immunIT/drupwn.git
        cd drupwn
        sudo python3 setup.py install
    }
    drupwn
} > /dev/null 2>&1
echo "${BLUE} Done ${RESET}"
echo ""


echo "${GREEN} [+] Downloading Git tools ${RESET}"
{
    cd $DESTINATION_DIR
    mkdir GIT
    cd GIT
    go get -u github.com/eth0izzle/shhgit
    sudo apt install -y trufflehog

    gitscanner(){
        cd $DESTINATION_DIR/GIT/
        git clone https://github.com/HightechSec/git-scanner
        cd git-scanner && chmod +x gitscanner.sh
    }
    gitscanner

    gitgraber(){
        cd $DESTINATION_DIR/GIT/
        git clone https://github.com/hisxo/gitGraber.git
        cd gitGraber && chmod +x gitGraber.py
        sudo pip3 install -r requirements.txt
    }
    gitgraber

    githound(){
        cd $DESTINATION_DIR/GIT/
        git clone https://github.com/tillson/git-hound.git
        cd git-hound
        sudo go build main.go && mv main githound
    }
    githound

    gitsearch(){
        cd $DESTINATION_DIR/GIT/
        git clone https://github.com/gwen001/github-search.git
        cd github-search
        sudo pip3 install -r  requirements3.txt
    }
    gitsearch
} > /dev/null 2>&1
echo "${BLUE} Done ${RESET}"
echo ""


echo "${GREEN} [+] Downloading Frameworks ${RESET}"
{

    cd $DESTINATION_DIR
    mkdir Frameworks
    cd Frameworks

    git clone https://github.com/1N3/Sn1per.git
    git clone https://github.com/j3ssie/Osmedeus.git
    git clone https://github.com/WhaleShark-Team/cobra.git
    git clone https://github.com/0xinfection/tidos-framework.git
    git clone https://github.com/infosecsecurity/Spaghetti.git
    git clone https://github.com/1N3/BlackWidow.git 
    git clone --recursive https://github.com/screetsec/Sudomy.git 
    git clone https://github.com/knassar702/scant3r.git
} > /dev/null 2>&1
echo "${BLUE} Done ${RESET}"
echo ""


echo "${GREEN} [+] JS Enum Tools ${RESET}"
{   
    cd $DESTINATION_DIR
    go install github.com/003random/getJS@latest
    go get -u github.com/lc/subjs
    git clone https://github.com/dark-warlord14/JSScanner.git
    git clone https://github.com/zseano/JS-Scan.git
    git clone https://github.com/robre/scripthunter.git

    JSParser(){
        cd $DESTINATION_DIR
        git clone https://github.com/nahamsec/JSParser.git
        cd JSParser
        sudo python3 setup.py install
    }
    JSParser

    LinkFinder(){
        cd $DESTINATION_DIR
        git clone https://github.com/GerbenJavado/LinkFinder.git
        cd LinkFinder
        sudo pip3 install -r requirements.txt
        sudo python3 setup.py install
    }
    LinkFinder

} > /dev/null 2>&1
echo "${BLUE} Done ${RESET}"
echo ""

echo "${GREEN} [+] Fingerprinting & CVE tools ${RESET}"
{   
    cd $DESTINATION_DIR
    sudo pip3 install webtech
    go install -v github.com/projectdiscovery/chaos-client/cmd/chaos@latest
    go install -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei@latest
    git clone https://github.com/projectdiscovery/nuclei-templates
    go get -u github.com/tomnomnom/gf

gfp(){
    cd $DESTINATION_DIR
    git clone https://github.com/1ndianl33t/Gf-Patterns.git
    mv $DESTINATION_DIR/Gf-Patterns/*.json ~/.gf
    rm -rf $DESTINATION_DIR/Gf-Patterns
    cd $DESTINATION_DIR
    wget https://raw.githubusercontent.com/devanshbatham/ParamSpider/master/gf_profiles/potential.json;
    mv $DESTINATION_DIR/potential.json ~/.gf;
    echo 'source $GOPATH/src/github.com/tomnomnom/gf/gf-completion.bash' >> ~/.bashrc;
    cp -r $GOPATH/src/github.com/tomnomnom/gf/examples ~/.gf;
}
gfp

    waf(){
        sudo apt install -y wafw00f
    }
    waf
} > /dev/null 2>&1
echo "${BLUE} Done ${RESET}"
echo ""

echo "${GREEN} [+] Network and Port Scanning tools ${RESET}"
{
    sudo apt install -y nmap
    sudo apt install -y brutespray
    sudo apt install -y nikto
    sudo apt install -y masscan
    go install github.com/j3ssie/metabigor@latest
    go install -v github.com/projectdiscovery/naabu/v2/cmd/naabu@latest
``

    asnlookup(){
        cd $DESTINATION_DIR
        git clone https://github.com/yassineaboukir/asnlookup.git
        cd asnlookup
        sudo pip3 install -r requirements.txt
    }
} > /dev/null 2>&1
echo "${BLUE} Done ${RESET}"
echo ""

echo "${GREEN} [+] Downloading wordlists ${RESET}"
{
    cd $DESTINATION_DIR
    mkdir Wordlists
    cd Wordlists
    git clone https://github.com/assetnote/commonspeak2-wordlists
    wget https://raw.githubusercontent.com/Mad-robot/recon-tools/master/dicc.txt
    git clone https://github.com/1N3/IntruderPayloads
    git clone https://github.com/swisskyrepo/PayloadsAllTheThings
    sudo apt install -y seclists
    cd /usr/share/seclists/Discovery/DNS/
    ##THIS FILE BREAKS MASSDNS AND NEEDS TO BE CLEANED
    cat dns-Jhaddix.txt | head -n -14 > clean-jhaddix-dns.txt
} > /dev/null 2>&1
printf "${BLUE} Done ${RESET}"
echo ""
echo ""

echo "${GREEN} [+] Installing tomnomnom tools ${RESET}"
echo "${GREEN} check out his other tools as well  ${RESET}"
{
    cd $DESTINATION_DIR
    go get -u github.com/tomnomnom/hacks/concurl
    go get -u github.com/tomnomnom/unfurl
    go get -u github.com/tomnomnom/hacks/anti-burl
    go get -u github.com/tomnomnom/hacks/filter-resolved
    go get -u github.com/tomnomnom/fff
    go get -u github.com/tomnomnom/qsreplace
} > /dev/null 2>&1
echo "${BLUE} Done ${RESET}"
echo ""

echo "${GREEN} [+] Installing Miscellaneous tools ${RESET}"
{
    sudo pip3 install ds-store requests
} > /dev/null 2>&1

echo "${RED} use the command 'source ~/.bash_profile' for the shell functions to work ${RESET}"
echo ""
echo "${RED}      ALL THE THANKS TO THE BEST PEOPLE OF THE INFOSEC COMMUNITY   ${RESET}"


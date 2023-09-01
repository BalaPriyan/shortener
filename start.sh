if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/BalaPriyan/shortener.git /shortener 
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /THALAPATHY-FILTER-BOT 
fi
cd /app
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py

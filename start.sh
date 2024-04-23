if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/ROYAL-JATT/HK-Productions-auto-filter-bot.git /HK-Productions-auto-filter-bot 
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /HK-Productions-auto-filter-bot
fi
cd /HK-Productions-auto-filter-bot 
pip3 install -U -r requirements.txt
echo "Starting HK-Productions-auto-filter-bot...."
python3 bot.py

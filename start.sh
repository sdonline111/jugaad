if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/sdonline111/jugaad/jugaad
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /jugaad
fi
cd /jugaad
pip3 install -U -r requirements.txt
echo "Bot Started...."
python3 bot.py

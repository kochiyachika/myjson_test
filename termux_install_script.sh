# remove old code for now
rm -rf elichika && \
# download the server code, 
curl -L https://github.com/arina999999997/elichika/archive/refs/heads/arina.zip -o elichika.zip && \
# extract it
unzip elichika && \
# clean up the zip
rm elichika.zip && \
# rename to elichika
mv -f elichika-arina elichika && \
# download the config file
curl https://codeberg.org/arina999999997/nozomi/raw/branch/arina/catfolk_cdn.json -o config.json && \
# download the update script
curl -L https://codeberg.org/arina999999997/nozomi/raw/branch/arina/termux_update_script.sh -o update.sh && \
# set the permission
chmod +rx elichika update.sh && \
# remove the script file
rm -- "../""$0"

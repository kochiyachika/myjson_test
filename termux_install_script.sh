# remove old code for now
rm -rf elichika && \
# download the server code, 
curl -L https://github.com/kochiyachika/elichika/archive/refs/heads/master.zip -o elichika.zip && \
# extract it
unzip elichika && \
# clean up the zip
rm elichika.zip && \
# rename to elichika
mv -f elichika-master elichika && \
cd elichika && \
# download the patched database
curl -L https://codeberg.org/arina999999997/nozomi_static_db/archive/master.zip -o static.zip && \
# unzip and put the data base in correct place
unzip static.zip && \
mv nozomi_static_db static && \
# remove the zip
rm static.zip && \
# download the config file
curl https://codeberg.org/arina999999997/nozomi/raw/branch/arina/catfolk_cdn.json -o config.json && \
# download the server binary
curl -L https://codeberg.org/arina999999997/nozomi/releases/download/0.0.1/elichika_android_arm64_8080_arina -o elichika && \
# download the update script
curl -L https://codeberg.org/arina999999997/nozomi/raw/branch/arina/termux_update_script.sh -o update.sh && \
# set the permission
chmod +rx elichika update.sh && \
# remove the script file
rm -- "../""$0"
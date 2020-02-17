curr=$(cat id)
new=$(printf "%d" "$curr+1")
echo "$new" > id
id=$(printf "%02d" "$new")
   
cp -r ../../ppsspp/* ./*
git add ./*
git config user.email "ppsspp@ppsspp.ppsspp"
git config user.name  "ppsspp"
git commit -m "ppsspp backup $id"
git push -u origin master 

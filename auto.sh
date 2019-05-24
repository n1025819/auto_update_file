#! /bin/bash

#要修改
#檔案位置
cd /e/pic

while true 
do 
	fc="$(ls|wc -l)" 
	if [ $fc -gt 0 ]; 
		then 
		
		#要修改
		#檔案位置
		FILES=/e/pic/* 
		for f in $FILES 
		do 
			/mingw64/bin/git add $f 
			
			#要修改
			#每一次更新版本名稱
			/mingw64/bin/git commit -m "DATE=$(date +%d-%m-%Y)" 
			
			#要修改
			#要上傳的git.hub
			/mingw64/bin/git remote add origin https://github.com/n1025819/iiii.git
			/mingw64/bin/git push -u origin master 
			/mingw64/bin/git remote remove origin 
			
		done 
	fi; 
	#要修改
	#要不要上傳後刪除檔案位置
	#rm -rf /e/pic/* 
	sleep 3 
done

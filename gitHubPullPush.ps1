function gitPush( $folder, $gitRepo, $comment)
{
	CD $folder
	git init
	git add .\.git
	
	git remote add origin $gitRepo
	git remote -v
	git push origin master
    git commit -m '$comment'
}
.PHONY: git vim help

home_dir=${HOME}/

help:
	@echo "make [vim|git|all|help]"

vim:
	@echo "Deploying VIM configuration ..."
	cp -R vim/.vim/ ${home_dir}
	cp vim/.vimrc ${home_dir}

git:
	@echo "Deploying git configuration ..."
	cp git/.gitconfig ${home_dir}

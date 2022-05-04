# Builds your site any time a source file changes and serves it locally.
# bundle exec jekyll serve

# 
bundle exec jekyll serve --config _s3l_config.yml

# 
rsync -arv -e 'ssh -p 22112' --progress --delete _s3l_site/ root@10.15.21.25:/var/www/html/people/zhezhao
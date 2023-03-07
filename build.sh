npm install

git clone https://github.com/EvanNotFound/hexo-theme-redefine.git themes/redefine

# 覆盖源文件（解决设置 TOC 目录模块的宽度无效问题）
cp overlay-article-content.styl themes/redefine/source/css/layout/article-content.styl

# 添加图片
cp smile.png themes/redefine/source/images

# 资源压缩
npm install hexo-all-minifier

# 本地测试用的
# hexo g
# hexo server

# 开始构建
hexo g --config _config.yml
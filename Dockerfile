FROM index.tenxcloud.com/docker_library/ruby

MAINTAINER 杜龙少 sdvdxl@163.com

#RUN gem sources --add https://gems.ruby-china.org/ --remove https://rubygems.org/
#RUN bundle config mirror.https://rubygems.org https://gems.ruby-china.org

RUN apt-get update && apt-get  install -yq nodejs npm && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /var/lib/slate

COPY * /var/lib/slate/

WORKDIR /var/lib/slate

RUN bundle install

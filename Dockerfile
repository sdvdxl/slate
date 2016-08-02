FROM index.tenxcloud.com/docker_library/ruby

MAINTAINER 杜龙少 sdvdxl@163.com

RUN gem sources --add https://gems.ruby-china.org/ --remove https://rubygems.org/
RUN bundle config mirror.https://rubygems.org https://gems.ruby-china.org

RUN mkdir -p /var/lib/slate

COPY * /var/lib/slate/

RUN cd /var/lib/slate

RUN chmod +x serve.sh

RUN bundle install

FROM jwilder/nginx-proxy:alpine

RUN { \ 
      echo -e "client_max_body_size 0;\n" \
          "fastcgi_buffers 8 16k;\n"\
          "fastcgi_buffer_size 32k;\n"\
          "fastcgi_connect_timeout 300s;\n"\
          "fastcgi_send_timeout 300s;\n"\
          "fastcgi_read_timeout 300s;\n"\
          "proxy_read_timeout 300s;"; \
    } > /etc/nginx/conf.d/unrestricted_client_body_size_and_set_proxy_read_timeout.conf
# Desc   : html formatting functions
# Author : snaiper

def newline_to_br(s)
    s.gsub(/\n/, '<br/>')
end

def to_html(str, title)
"<html>
   <head>
     <meta http-equiv=\"content-type\" content=\"text/html;charset=UTF-8\" />
     <title>#{title}</title>
   <head>
   <body>
     <p><h1>#{title}</h1></p>
     <p>#{newline_to_br(str)}</p>
  </body>
</html>"

end

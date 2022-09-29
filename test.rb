str = "Namazal hleb maslom"
str_degree = str.split.map(&:size).reverse.inject(&:**)

str.split.map{|x| x.size}.reverse.inject { |sum ,x| sum**x }

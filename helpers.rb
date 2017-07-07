helpers do

  def render_view path, options = {}
    erb(path.to_sym, options)		
  end

  def render_partial path, options = {}
  	parts = path.to_s.split('/')
  	filename = parts.pop
  	new_path = [parts,"_#{filename}"].join('/')
  	erb(new_path.to_sym, options.merge(:layout => false))
  end
end

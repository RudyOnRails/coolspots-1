class Forgery::SpotName < Forgery

  def self.name
    dictionaries[:spot_names].random.unextend
  end
end

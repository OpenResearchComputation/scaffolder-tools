class ScaffolderValidate

  def initialize(scaffold)
    @scaffold = scaffold
  end

  def errors
    @scaffold.select{|i| ! i.valid? }
  end

end

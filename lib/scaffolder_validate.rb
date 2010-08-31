class ScaffolderValidate

  def initialize(scaffold)
    @scaffold = scaffold
  end

  def errors
    @scaffold.select{|i| ! i.valid? }
  end

  def self.inserts_overlap?(a,b)
    ! (a.position.to_a & b.position.to_a).empty?
  end

end

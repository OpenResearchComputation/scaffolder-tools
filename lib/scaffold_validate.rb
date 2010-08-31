class ScaffoldValidate

  def initialize(scaffold)
    @scaffold = scaffold
  end

  def errors
    sequences = @scaffold.select{|i| i.entry_type == :sequence}
    sequences.reject{|i| self.class.sequence_errors(i).empty? }
  end

  def self.inserts_overlap?(a,b)
    ! (a.position.to_a & b.position.to_a).empty?
  end

  def self.sequence_errors(sequence)
    sequence.inserts.inject(Array.new) do |errors,a|
      sequence.inserts.each do |b|
        next if a.equal?(b)
        errors << [a,b].sort if inserts_overlap?(a,b)
      end
      errors
    end.uniq
  end

end
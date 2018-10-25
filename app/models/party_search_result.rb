class PartySearchResult
  def initialize(zip_code)
    @zip_code = zip_code
  end

  def parties
    #amend this to exclude past parties
    @parties ||= Party.where('zip_code = ? AND date >= ?', @zip_code, Date.today)
  end
end

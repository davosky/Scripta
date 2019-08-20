module ImmigrationsHelper
  def immigrationrevisionisnotnill?
      @immigration.revision_date != nil
  end
end

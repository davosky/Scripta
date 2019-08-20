module PensionsHelper
  def pensionrevisionisnotnill?
      @pension.revision_date != nil
  end
end

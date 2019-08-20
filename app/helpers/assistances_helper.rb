module AssistancesHelper
  def assistancerevisionisnotnill?
      @assistance.revision_date != nil
  end
end

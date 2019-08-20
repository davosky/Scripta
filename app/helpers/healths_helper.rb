module HealthsHelper
  def healthrevisionisnotnill?
      @health.revision_date != nil
  end
end

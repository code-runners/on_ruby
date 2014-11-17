class MainDomainConstraint
  def matches?(request)
    request.host =~ /www\.conit-bg\.\w+/
  end
end

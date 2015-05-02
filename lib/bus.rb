class Bus
  def arrive depo
    @depo = depo
    @depo.request_clean
  end

  def location
    @depo
  end
end

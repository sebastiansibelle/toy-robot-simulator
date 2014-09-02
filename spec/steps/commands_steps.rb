step "we initialized the application" do
  @stdin = FakeIO.new
  @stdout = StringIO.new
  @application = Application.new()
end

step "we send the command :command" do |command|
  @stdin.puts command
end
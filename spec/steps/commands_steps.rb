step "we initialized the application" do
  @stdin = FakeIO.new
  @stdout = StringIO.new
  @application = Application.new(@stdin, @stdout)
end

step "we send the command :command" do |command|
  @stdin.puts command
end

step "we run the application" do
  @application.run
end

step "we should see :report" do |report|
  expect(@stdout.string).to eq(report)
end
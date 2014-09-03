step "we initialized the simulator" do
  @stdin = FakeIO.new
  @stdout = StringIO.new
  @simulator = Simulator.new(@stdin, @stdout)
end

step "we send the command :command" do |command|
  @stdin.puts command
end

step "we run the simulator" do
  @simulator.run
end

step "we should see :report" do |report|
  expect(@stdout.string).to eq(report)
end
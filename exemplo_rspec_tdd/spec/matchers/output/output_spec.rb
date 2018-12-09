describe 'Matcher output' do
  it {expect{puts "Ricardo"}.to output.to_stdout}
  it {expect{print "Ricardo"}.to output("Ricardo").to_stdout}
  it {expect{print "Ricardo Lima"}.to output(/Ricardo/).to_stdout}

  it {expect{warn "Ricardo"}.to output.to_stderr}
  it {expect{warn "Ricardo"}.to output("Ricardo\n").to_stderr}
  it {expect{warn "Ricardo Lima"}.to output(/Ricardo/).to_stderr}
end
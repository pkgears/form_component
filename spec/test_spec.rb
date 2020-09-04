describe "rails defined" do
  it "should return Rails as not defined" do
    expect(defined?(Rails)).to be nil
  end
end

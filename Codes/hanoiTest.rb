describe "Hanoi Kata" do 
  it "Cant put a disk on top of a smaller disk" do
    Test.assert_equals( ( source[0] < source[1] ), msg="Cant put a disk on top of a smaller disk") 
  end
end    
require('rspec')
require('calc')
describe('splitter') do
  it('will split multiple questions, solve each, and return the individual answers') do
    splitter("What is 2 plus 3? What is 7 divided by 4?").should(eq("5.0 1.75"))
  end
end

describe('calc') do
  it('will return 2 for 1 plus 1!') do
    calc('what is 1 plus 1?').should(eq(2))
  end
  it("will return 3 for 9 minus 6") do
    calc("what is 9 minus 6?").should(eq(3))
  end
  it("will return 10 for 5 times 2") do
    calc("what is 5 times 2?").should(eq(10))
  end
  it("will return 5 for 10 divided by 2") do
    calc("what is 10 divided by 2?").should(eq(5))
  end
  it("will return 3 for 12 divided by 2 divided by 2") do
    calc("what is 12 divided by 2 divided by 2?").should(eq(3))
  end
  it("will return 2.5 for 5 divided by 2") do
    calc("what is 5 divided by 2?").should(eq(2.5))
  end
  it("will return 100 for 10 to the 2nd power") do
    calc("what is 10 to the 2nd power?").should(eq(100))
  end
  
  it("will return 10000 for 10 to the 2nd power to the 2nd power") do
    calc("what is 10 to the 2nd power to the 2nd power?").should(eq(10000))
  end

  it("will return 20000 for 10 to the 2nd power to the 2nd power times 2") do
    calc("what is 10 to the 2nd power to the 2nd power times 2?").should(eq(20000))
  end
  it("will return 3 for 1 plus 1 plus 1") do
    calc("what is 4 plus 6 divided by 2").should(eq(7))
  end
  it("will return 0 for 3 minus 1 minus 1 minus 1") do
    calc("what is 3 minus 1 minus 1 minus 1?").should(eq(0))
  end
  it("will return 5 for 10 minus 6 plus 1") do
    calc("what is 10 minus 6 plus 1?").should(eq(5))
  end
  it("will return 12 for 10 minus 6 plus 1 plus 7") do
    calc("what is 10 minus 6 plus 1 plus 7?").should(eq(12))
  end
  it("will return 16 for 2 times 4 times 2") do
    calc("what is 2 times 4 times 2?").should(eq(16))
  end
  it("will return 10 for 1000 divided by 10 divided by 10") do
    calc("what is 1000 divided by 10 divided by 10?").should(eq(10))
  end
  it("will return 14 for 3 to the 2nd power plus 5") do
    calc("what is 3 to the 2nd power plus 5?").should(eq(14))
  end
  it("will return 14 for 5 plus 3 to the 2nd power") do
    calc("what is 5 plus 3 to the 2nd power?").should(eq(14))
  end
  it("will return 17 for 5 plus 3 to the 2nd power plus 3") do
    calc("what is 5 plus 3 to the 2nd power plus 3?").should(eq(17))
  end
end

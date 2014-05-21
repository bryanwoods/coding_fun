require './programming_language'

describe ProgrammingLanguage do
  describe "getters" do
    describe "name" do
      it "can be retrieved" do
        ruby = ProgrammingLanguage.new("Ruby", 7.5)
        ruby.name.should == "Ruby"
      end
    end

    describe "fun_level" do
      it "can be retrieved" do
        php = ProgrammingLanguage.new("PHP", 0.5)
        php.fun_level.should == 0.5
      end
    end
  end

  describe "setters" do
    describe "name=" do
      it "can be set" do
        erlang = ProgrammingLanguage.new("Erlang", 8.5)
        erlang.name = "Elixir"
        erlang.name.should == "Elixir"
      end
    end

    describe "fun_level=" do
      elixir = ProgrammingLanguage.new("Elixir", 8.5)
      elixir.fun_level = 9
      elixir.fun_level.should == 9
    end
  end

  describe "#sort" do
    it "sorts programming languages by fun level" do
      languages = [
        ProgrammingLanguage.new("Ruby", 7.5),
        ProgrammingLanguage.new("PHP", 0.5),
        ProgrammingLanguage.new("Erlang", 8.5),
        ProgrammingLanguage.new("Perl", 5),
        ProgrammingLanguage.new("Haskell", 9.5)
      ]

      languages.sort.map(&:name).should == %w(PHP Perl Ruby Erlang Haskell)
    end
  end
end

defmodule E.AnonymousFunctionsTest do
  use ExUnit.Case

  alias E.AnonymousFunctions, as: AF

  test "animal_tickler" do
    assert AF.animal_tickling(:yak).() == "You're tickling the yak."
  end

  test "animal_milker" do
    assert AF.animal_milking(:yak).() == "You're milking the yak."
  end

  test "animal_shaver" do
    assert AF.animal_shaving(:yak).() == "You're shaving the yak."
  end
end

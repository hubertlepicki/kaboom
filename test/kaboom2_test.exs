defmodule Kaboom2Test do
  use ExUnit.Case, async: true

  import ExUnit.CaptureLog

  require Logger

  test "log some debugs" do
    assert capture_log(fn ->
             Enum.each((0..1000), fn i ->
               Logger.debug("log msg #{i}")
             end)
           end) =~ "log msg"
  end

  test "log some warnings" do
    assert capture_log(fn ->
             Enum.each((0..1000), fn i ->
               Logger.warning("log msg #{i}")
             end)
           end) =~ "log msg"
  end

  test "log some infos" do
    assert capture_log(fn ->
             Enum.each((0..1000), fn i ->
               Logger.info("log msg #{i}")
             end)
           end) =~ "log msg"
  end

  test "log some errors" do
    assert capture_log(fn ->
             Enum.each((0..1000), fn i ->
               Logger.error("log msg #{i}")
             end)
           end) =~ "log msg"
  end
end

class Litime < Formula
  desc "Command-line tool to display the current time ish with a literature quote"
  homepage "https://github.com/ikornaselur/litime"
  url "https://github.com/ikornaselur/litime.git", tag: "v3.0.1", revision: "7abf8d0ee656e71d3dbb0ef0df928fb6b681c462"
  license "CC-BY-NC-SA-2.5"
  head "https://github.com/ikornaselur/litime.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    output = shell_output("#{bin}/litime 04:44")
    assert_match "\" “At 0444 hours yesterday morning", output
  end
end

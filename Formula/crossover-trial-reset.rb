class CrossoverTrialReset < Formula
  desc "This is a bash script designed to reset the trial period of CrossOver"
  homepage "https://github.com/stacle-studios/crossover-trial-reset"
  url "https://github.com/stacle-studios/crossover-trial-reset/raw/refs/heads/main/reset_crossover.sh"
  version "0.0.13_18633bc"
  sha256 "45e0d250436698957086ec37545ead45b1514e8a6905708bc75f402846518bbe"
  head "https://github.com/stacle-studios/crossover-trial-reset.git"

  def install
    bin.install "reset_crossover.sh" => "crossover-trial-reset"
    chmod 0755, bin/"crossover-trial-reset"
  end
end

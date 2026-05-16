class CrossoverTrialReset < Formula
  desc "This is a bash script designed to reset the trial period of CrossOver"
  homepage "https://github.com/stacle-studios/crossover-trial-reset"
  url "https://github.com/stacle-studios/crossover-trial-reset/raw/refs/heads/main/reset_crossover.sh"
  version "0.0.4_ca606f8"
  sha256 "761eedb49025dbe344fadab73bc9ccfdf015a91d61d2e1ed9b35a54d0429a392"
  head "https://github.com/stacle-studios/crossover-trial-reset.git"

  def install
    bin.install "reset_crossover.sh" => "crossover-trial-reset"
    chmod 0755, bin/"crossover-trial-reset"
  end
end

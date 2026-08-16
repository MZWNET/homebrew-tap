class CrossoverTrialReset < Formula
  desc "This is a bash script designed to reset the trial period of CrossOver"
  homepage "https://github.com/stacle-studios/crossover-trial-reset"
  url "https://github.com/stacle-studios/crossover-trial-reset/raw/refs/heads/main/reset_crossover.sh"
  version "0.0.6_6d164e3"
  sha256 "493e7dae8750bd15be0fca9b2c4b7c5a95ba7d4d970b67c35207adfca91413a5"
  head "https://github.com/stacle-studios/crossover-trial-reset.git"

  def install
    bin.install "reset_crossover.sh" => "crossover-trial-reset"
    chmod 0755, bin/"crossover-trial-reset"
  end
end

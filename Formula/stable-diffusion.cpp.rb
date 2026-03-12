class StableDiffusionCpp < Formula
  desc "Diffusion model(SD,Flux,Wan,Qwen Image,Z-Image,...) inference in pure C/C++"
  homepage "https://github.com/leejet/stable-diffusion.cpp"
  url "https://github.com/MZWNET/actions/releases/download/sd-master-525-d6dd6d7/sd-master-525-d6dd6d7-bin-macos-metal-arm64.zip"
  version "0.0.525_d6dd6d7"
  sha256 "302a9f395eae5ac09c69db7179f175fe87221994a5e61bdc25db0e182b0693ff"
  license "MIT"
  head "https://github.com/leejet/stable-diffusion.cpp.git"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"sd-cli"
    bin.install_symlink libexec/"sd-server"
  end
end

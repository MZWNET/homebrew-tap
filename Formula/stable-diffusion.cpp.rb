class StableDiffusionCpp < Formula
  desc "Diffusion model(SD,Flux,Wan,Qwen Image,Z-Image,...) inference in pure C/C++"
  homepage "https://github.com/leejet/stable-diffusion.cpp"
  url "https://github.com/MZWNET/actions/releases/download/sd-master-525-d6dd6d7/sd-master-525-d6dd6d7-bin-macos-metal-arm64.zip"
  version "0.0.525_d6dd6d7"
  sha256 "c530c3a2dfe35385ea0a0cef34ca44528c10867e650eafc2c671784346e27de6"
  license "MIT"
  head "https://github.com/leejet/stable-diffusion.cpp.git"

  depends_on "libomp"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"sd-cli"
    bin.install_symlink libexec/"sd-server"
  end
end

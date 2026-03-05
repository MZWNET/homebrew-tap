class StableDiffusionCpp < Formula
  desc "Diffusion model(SD,Flux,Wan,Qwen Image,Z-Image,...) inference in pure C/C++"
  homepage "https://github.com/leejet/stable-diffusion.cpp"
  url "https://github.com/MZWNET/actions/releases/download/sd-master-520-d950627/sd-master-520-d950627-bin-macos-metal-arm64.zip"
  version "0.0.520_d950627"
  sha256 "b92d8431d94dad2f40ae7600cde677ea3b5b695f91030a2c6555b98e24a7c947"
  license "MIT"
  head "https://github.com/leejet/stable-diffusion.cpp.git"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"sd-cli"
    bin.install_symlink libexec/"sd-server"
  end
end

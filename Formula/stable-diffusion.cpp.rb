class StableDiffusionCpp < Formula
  desc "Diffusion model(SD,Flux,Wan,Qwen Image,Z-Image,...) inference in pure C/C++"
  homepage "https://github.com/leejet/stable-diffusion.cpp"
  license "MIT"
  head "https://github.com/leejet/stable-diffusion.cpp.git"

  version "0.0.492_f957fa3"
  url "https://github.com/MZWNET/actions/releases/download/sd-master-492-f957fa3/sd-master-492-f957fa3-bin-macos-metal-arm64.zip"
  sha256 "9d3b034d4ebc393413e933604da9088eff5d4a2ea12feba89d2547b51bcdd998"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"sd-cli"
    bin.install_symlink libexec/"sd-server"
  end
end

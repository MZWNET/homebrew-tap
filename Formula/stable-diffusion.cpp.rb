class StableDiffusionCpp < Formula
  desc "Diffusion model(SD,Flux,Wan,Qwen Image,Z-Image,...) inference in pure C/C++"
  homepage "https://github.com/leejet/stable-diffusion.cpp"
  license "MIT"
  head "https://github.com/leejet/stable-diffusion.cpp.git"

  version "0.0.493_65891d7"
  url "https://github.com/MZWNET/actions/releases/download/sd-master-493-65891d7/sd-master-493-65891d7-bin-macos-metal-arm64.zip"
  sha256 "897d1fbe8fa87dfc6f9015f74d8f6311eb823e050b748ae246d908247940f1f0"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"sd-cli"
    bin.install_symlink libexec/"sd-server"
  end
end

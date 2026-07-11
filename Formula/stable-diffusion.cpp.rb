class StableDiffusionCpp < Formula
  desc "Diffusion model(SD,Flux,Wan,Qwen Image,Z-Image,...) inference in pure C/C++"
  homepage "https://github.com/leejet/stable-diffusion.cpp"
  url "https://github.com/MZWNET/actions/releases/download/sd-master-773-1b04283/sd-master-773-1b04283-bin-macos-metal-arm64.zip"
  version "0.0.773_1b04283"
  sha256 "f618544c294a7274f845cc70bbf35b60039ef7a35fc6fd34ef4b41781a2bb58e"
  license "MIT"
  head "https://github.com/leejet/stable-diffusion.cpp.git"

  depends_on "libomp"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"sd-cli"
    bin.install_symlink libexec/"sd-server"
  end
end

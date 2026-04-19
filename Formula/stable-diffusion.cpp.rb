class StableDiffusionCpp < Formula
  desc "Diffusion model(SD,Flux,Wan,Qwen Image,Z-Image,...) inference in pure C/C++"
  homepage "https://github.com/leejet/stable-diffusion.cpp"
  url "https://github.com/MZWNET/actions/releases/download/sd-master-580-7d33d4b/sd-master-580-7d33d4b-bin-macos-metal-arm64.zip"
  version "0.0.580_7d33d4b"
  sha256 "deffe0c6192138640d98a70bbad7ebbe37bcf6932036370385d6814815e9ebdb"
  license "MIT"
  head "https://github.com/leejet/stable-diffusion.cpp.git"

  depends_on "libomp"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"sd-cli"
    bin.install_symlink libexec/"sd-server"
  end
end

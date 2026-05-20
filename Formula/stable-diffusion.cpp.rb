class StableDiffusionCpp < Formula
  desc "Diffusion model(SD,Flux,Wan,Qwen Image,Z-Image,...) inference in pure C/C++"
  homepage "https://github.com/leejet/stable-diffusion.cpp"
  url "https://github.com/MZWNET/actions/releases/download/sd-master-633-5b0267e/sd-master-633-5b0267e-bin-macos-metal-arm64.zip"
  version "0.0.633_5b0267e"
  sha256 "a75d893be5f44cbb27d2b58f5af3a96ea27da3e8d297566a60179225b4a1b676"
  license "MIT"
  head "https://github.com/leejet/stable-diffusion.cpp.git"

  depends_on "libomp"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"sd-cli"
    bin.install_symlink libexec/"sd-server"
  end
end

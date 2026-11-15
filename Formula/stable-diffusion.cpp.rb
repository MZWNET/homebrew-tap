class StableDiffusionCpp < Formula
  desc "Diffusion model(SD,Flux,Wan,Qwen Image,Z-Image,...) inference in pure C/C++"
  homepage "https://github.com/leejet/stable-diffusion.cpp"
  url "https://github.com/MZWNET/actions/releases/download/sd-master-1104-5dcfa79/sd-master-1104-5dcfa79-bin-macos-metal-arm64.zip"
  version "0.0.1104_5dcfa79"
  sha256 "1cbd8ad51f1429097458b4e31a1abfb48c4f52dc5eacf824a8a0b4b05d78c262"
  license "MIT"
  head "https://github.com/leejet/stable-diffusion.cpp.git"

  depends_on "libomp"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"sd-cli"
    bin.install_symlink libexec/"sd-server"
  end
end

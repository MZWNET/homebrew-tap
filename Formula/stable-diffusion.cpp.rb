class StableDiffusionCpp < Formula
  desc "Diffusion model(SD,Flux,Wan,Qwen Image,Z-Image,...) inference in pure C/C++"
  homepage "https://github.com/leejet/stable-diffusion.cpp"
  url "https://github.com/MZWNET/actions/releases/download/sd-master-866-42d6c0a/sd-master-866-42d6c0a-bin-macos-metal-arm64.zip"
  version "0.0.866_42d6c0a"
  sha256 "23ee05c4ceafce9855c1a8dafcec220bf95592f84a004416c2cb067b3dc3bda8"
  license "MIT"
  head "https://github.com/leejet/stable-diffusion.cpp.git"

  depends_on "libomp"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"sd-cli"
    bin.install_symlink libexec/"sd-server"
  end
end

class StableDiffusionCpp < Formula
  desc "Diffusion model(SD,Flux,Wan,Qwen Image,Z-Image,...) inference in pure C/C++"
  homepage "https://github.com/leejet/stable-diffusion.cpp"
  url "https://github.com/MZWNET/actions/releases/download/sd-master-749-b11c95a/sd-master-749-b11c95a-bin-macos-metal-arm64.zip"
  version "0.0.749_b11c95a"
  sha256 "56a76db1cbb067d0bb136013964a0df16d391aae7a4f6fc156f167daf42e00f7"
  license "MIT"
  head "https://github.com/leejet/stable-diffusion.cpp.git"

  depends_on "libomp"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"sd-cli"
    bin.install_symlink libexec/"sd-server"
  end
end

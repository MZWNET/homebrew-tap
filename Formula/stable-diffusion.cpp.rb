class StableDiffusionCpp < Formula
  desc "Diffusion model(SD,Flux,Wan,Qwen Image,Z-Image,...) inference in pure C/C++"
  homepage "https://github.com/leejet/stable-diffusion.cpp"
  url "https://github.com/MZWNET/actions/releases/download/sd-master-719-f440ad9/sd-master-719-f440ad9-bin-macos-metal-arm64.zip"
  version "0.0.719_f440ad9"
  sha256 "7f06bbfe3d89042c0bab0fad0f49f4652b8d703871c6a8859201d0baa4062994"
  license "MIT"
  head "https://github.com/leejet/stable-diffusion.cpp.git"

  depends_on "libomp"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"sd-cli"
    bin.install_symlink libexec/"sd-server"
  end
end

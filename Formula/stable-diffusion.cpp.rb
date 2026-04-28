class StableDiffusionCpp < Formula
  desc "Diffusion model(SD,Flux,Wan,Qwen Image,Z-Image,...) inference in pure C/C++"
  homepage "https://github.com/leejet/stable-diffusion.cpp"
  url "https://github.com/MZWNET/actions/releases/download/sd-master-589-f40a707/sd-master-589-f40a707-bin-macos-metal-arm64.zip"
  version "0.0.589_f40a707"
  sha256 "7c7ca5e3c27dea4254e6b6ebaa0f77ef28b5cf44115bd2b1a97cc7aa53af012c"
  license "MIT"
  head "https://github.com/leejet/stable-diffusion.cpp.git"

  depends_on "libomp"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"sd-cli"
    bin.install_symlink libexec/"sd-server"
  end
end

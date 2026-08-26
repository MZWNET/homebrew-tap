class StableDiffusionCpp < Formula
  desc "Diffusion model(SD,Flux,Wan,Qwen Image,Z-Image,...) inference in pure C/C++"
  homepage "https://github.com/leejet/stable-diffusion.cpp"
  url "https://github.com/MZWNET/actions/releases/download/sd-master-829-0a565f2/sd-master-829-0a565f2-bin-macos-metal-arm64.zip"
  version "0.0.829_0a565f2"
  sha256 "01bfb366c8ff1d7eb11acef585c711be9cac22e2655143b4b3e5a3f3aa17a0b2"
  license "MIT"
  head "https://github.com/leejet/stable-diffusion.cpp.git"

  depends_on "libomp"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"sd-cli"
    bin.install_symlink libexec/"sd-server"
  end
end

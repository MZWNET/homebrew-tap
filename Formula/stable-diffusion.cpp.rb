class StableDiffusionCpp < Formula
  desc "Diffusion model(SD,Flux,Wan,Qwen Image,Z-Image,...) inference in pure C/C++"
  homepage "https://github.com/leejet/stable-diffusion.cpp"
  url "https://github.com/MZWNET/actions/releases/download/sd-master-709-92a3b73/sd-master-709-92a3b73-bin-macos-metal-arm64.zip"
  version "0.0.709_92a3b73"
  sha256 "03f2b6155e5d6b5b0a21242ab51a3667fcb97c96c24dba34dd962b773044c377"
  license "MIT"
  head "https://github.com/leejet/stable-diffusion.cpp.git"

  depends_on "libomp"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"sd-cli"
    bin.install_symlink libexec/"sd-server"
  end
end

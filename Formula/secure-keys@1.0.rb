class SecureKeys < Formula
  desc 'Secure Keys is a simple tool to manage your secret keys in your iOS project'.freeze
  version '1.0.4'
  homepage 'https://github.com/DerianCordobaPerez/secure-keys-generator'.freeze
  url 'https://github.com/DerianCordobaPerez/secure-keys-generator/archive/refs/tags/v1.0.4.tar.gz'.freeze
  sha256 '088fe8244bab93994702a8cabc43c955337d7320dff97939c0a28a4f50d33dc2'.freeze
  license 'MIT'.freeze

  depends_on 'ruby@3.3'
  depends_on macos: :sonoma

  def install
    ENV['GEM_HOME'] = libexec
    ENV['GEM_PATH'] = libexec

    system 'gem', 'build', 'secure-keys.gemspec'
    system 'gem', 'install', "secure-keys-#{version}.gem", '--no-document'

    (bin / 'secure-keys').write_env_script libexec / 'bin/secure-keys',
                                           PATH: "#{Formula['ruby@3.3'].opt_bin}:#{libexec}/bin:$PATH",
                                           GEM_HOME: libexec.to_s,
                                           GEM_PATH: libexec.to_s
  end

  test do
    system 'which', 'secure-keys'
  end
end

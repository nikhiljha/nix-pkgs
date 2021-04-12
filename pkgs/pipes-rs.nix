{ lib, fetchFromGitHub, rustPlatform }:

rustPlatform.buildRustPackage rec {
  pname = "pipes-rs";
  version = "1.4.2";

  src = fetchFromGitHub {
    owner = "CookieCoder15";
    repo = "pipes-rs";
    rev = "v${version}";
    sha256 = "sha256-IqFvU0berXgt8mgi5NPuO7Vv/p+p1EP+7jY33XDZBLk=";
  };
  
  cargoSha256 = "sha256-B//im6wRphm6rVVrD/lyotGjZ26xXz4KeYAsEqVEywM=";

  doCheck = false;

  meta = with lib; {
    description = "a rewrite of pipes.sh in Rust";
    homepage = "https://github.com/CookieCoder15/pipes-rs";
    license = licenses.mit;
    maintainers = with maintainers; [ njha ];
  };
}

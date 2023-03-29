{
  description = "A simple flake template";

  outputs = { self }: {
    templates.default = {
      description = self.description;
      path = ./default;
    };
  };
}

return {
  "yetone/avante.nvim",
  build = "make BUILD_FROM_SOURCE=true",
  opts = {
    provider = "deepseek",
    vendors = {
      deepseek = {
        __inherited_from = "openai",
        api_key_name = "DEEPSEEK_API_KEY",
        endpoint = "https://api.deepseek.com",
        model = "deepseek-chat",
      },
    },
    auto_suggestions_provider = "deepseek",
  },
}

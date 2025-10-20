local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
  s("log", {
    t("console.log("),
    i(1),
    t(")"),
  }),
  s("cl", {
    t("console.log("),
    i(1),
    t(")"),
  }),
  s("rafl", {
    t("export async function loader() {"),
    t({"", "  "}),
    i(1),
    t({"", "}"}),
  }),
  s("raflp", {
    t("export async function loader({ params }) {"),
    t({"", "  "}),
    i(1),
    t({"", "}"}),
  }),
  s("ir", {
    t("import * as React from 'react';"),
  }),
  s("sfc", {
    t("const "),
    f(function()
      return vim.fn.expand("%:t:r")
    end, {}),
    t(" = () => {"),
    t({"", "  return ("}),
    t({"", "    <div>"}),
    t({"", "      "}),
    f(function()
      return vim.fn.expand("%:t:r")
    end, {}),
    t({"", "    </div>"}),
    t({"", "  )"}),
    t({"", "}"}),
    t({"", ""}),
    t({"", "export default "}),
    f(function()
      return vim.fn.expand("%:t:r")
    end, {}),
    t(";"),
  }),
}


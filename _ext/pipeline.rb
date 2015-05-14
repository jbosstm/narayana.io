require 'js_minifier'
require 'css_minifier'
require 'html_minifier'
require 'breadcrumb'

Awestruct::Extensions::Pipeline.new do
  helper Awestruct::Extensions::Partial
  helper Awestruct::Extensions::Breadcrumb
  transformer Awestruct::Extensions::JsMinifier.new
  transformer Awestruct::Extensions::CssMinifier.new
  transformer Awestruct::Extensions::HtmlMinifier.new
  extension Awestruct::Extensions::Indexifier.new([/^\/docs\/.*/, /\/404.html/]) # Exclude generated docs from "Indexification"
end

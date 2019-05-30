/* Html module represents a HtmlJSX view engine. */
type htmlElement;

type attribute;

let attr: (string, string) => attribute;
let flag: string => attribute;

let text: string => htmlElement;
let char: char => htmlElement;
let int: int => htmlElement;
let float: float => htmlElement;
let element:
  (string, list(attribute), ~children: list(htmlElement)=?, unit) =>
  htmlElement;

let renderHtmlDocument: htmlElement => string;
let renderHtmlElement: htmlElement => string;
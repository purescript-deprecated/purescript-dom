-- http://www.w3.org/TR/html5
module DOM.HTML.Types
  ( Navigator
  , Location
  , History
  , URL
  , Window
  , ALERT
  , CONFIRM
  , HISTORY
  , PROMPT
  , WINDOW
  , windowToEventTarget
  , HTMLDocument
  , htmlDocumentToDocument
  , htmlDocumentToNonElementParentNode
  , htmlDocumentToParentNode
  , htmlDocumentToNode
  , htmlDocumentToEventTarget
  , readHTMLDocument
  , HTMLElement
  , htmlElementToElement
  , htmlElementToParentNode
  , htmlElementToNonDocumentTypeChildNode
  , htmlElementToNode
  , htmlElementToEventTarget
  , readHTMLElement
  , HTMLHtmlElement
  , htmlHtmlElementToHTMLElement
  , readHTMLHtmlElement
  , HTMLHeadElement
  , htmlHeadElementToHTMLElement
  , readHTMLHeadElement
  , HTMLTitleElement
  , htmlTitleElementToHTMLElement
  , readHTMLTitleElement
  , HTMLBaseElement
  , htmlBaseElementToHTMLElement
  , readHTMLBaseElement
  , HTMLLinkElement
  , htmlLinkElementToHTMLElement
  , readHTMLLinkElement
  , HTMLMetaElement
  , htmlMetaElementToHTMLElement
  , readHTMLMetaElement
  , HTMLStyleElement
  , htmlStyleElementToHTMLElement
  , readHTMLStyleElement
  , HTMLBodyElement
  , htmlBodyElementToHTMLElement
  , readHTMLBodyElement
  , HTMLHeadingElement
  , htmlHeadingElementToHTMLElement
  , readHTMLHeadingElement
  , HTMLParagraphElement
  , htmlParagraphElementToHTMLElement
  , readHTMLParagraphElement
  , HTMLHRElement
  , htmlHRElementToHTMLElement
  , readHTMLHRElement
  , HTMLPreElement
  , htmlPreElementToHTMLElement
  , readHTMLPreElement
  , HTMLQuoteElement
  , htmlQuoteElementToHTMLElement
  , readHTMLQuoteElement
  , HTMLOListElement
  , htmlOListElementToHTMLElement
  , readHTMLOListElement
  , HTMLUListElement
  , htmlUListElementToHTMLElement
  , readHTMLUListElement
  , HTMLLIElement
  , htmlLIElementToHTMLElement
  , readHTMLLIElement
  , HTMLDListElement
  , htmlDListElementToHTMLElement
  , readHTMLDListElement
  , HTMLDivElement
  , htmlDivElementToHTMLElement
  , readHTMLDivElement
  , HTMLAnchorElement
  , htmlAnchorElementToHTMLElement
  , readHTMLAnchorElement
  , HTMLDataElement
  , htmlDataElementToHTMLElement
  , readHTMLDataElement
  , HTMLTimeElement
  , htmlTimeElementToHTMLElement
  , readHTMLTimeElement
  , HTMLSpanElement
  , htmlSpanElementToHTMLElement
  , readHTMLSpanElement
  , HTMLBRElement
  , htmlBRElementToHTMLElement
  , readHTMLBRElement
  , HTMLModElement
  , htmlModElementToHTMLElement
  , readHTMLModElement
  , HTMLImageElement
  , htmlImageElementToHTMLElement
  , readHTMLImageElement
  , HTMLIFrameElement
  , htmlIFrameElementToHTMLElement
  , readHTMLIFrameElement
  , HTMLEmbedElement
  , htmlEmbedElementToHTMLElement
  , readHTMLEmbedElement
  , HTMLObjectElement
  , htmlObjectElementToHTMLElement
  , readHTMLObjectElement
  , HTMLParamElement
  , htmlParamElementToHTMLElement
  , readHTMLParamElement
  , HTMLMediaElement
  , htmlMediaElementToHTMLElement
  , readHTMLMediaElement
  , HTMLAudioElement
  , htmlAudioElementToHTMLMediaElement
  , readHTMLAudioElement
  , HTMLVideoElement
  , htmlVideoElementToHTMLMediaElement
  , readHTMLVideoElement
  , HTMLSourceElement
  , htmlSourceElementToHTMLElement
  , readHTMLSourceElement
  , HTMLTrackElement
  , htmlTrackElementToHTMLElement
  , readHTMLTrackElement
  , HTMLMapElement
  , htmlMapElementToHTMLElement
  , readHTMLMapElement
  , HTMLAreaElement
  , htmlAreaElementToHTMLElement
  , readHTMLAreaElement
  , HTMLTableElement
  , htmlTableElementToHTMLElement
  , readHTMLTableElement
  , HTMLTableCaptionElement
  , htmlTableCaptionElementToHTMLElement
  , readHTMLTableCaptionElement
  , HTMLTableColElement
  , htmlTableColElementToHTMLElement
  , readHTMLTableColElement
  , HTMLTableSectionElement
  , htmlTableSectionElementToHTMLElement
  , readHTMLTableSectionElement
  , HTMLTableRowElement
  , htmlTableRowElementToHTMLElement
  , readHTMLTableRowElement
  , HTMLTableCellElement
  , htmlTableCellElementToHTMLElement
  , readHTMLTableCellElement
  , HTMLTableDataCellElement
  , htmlTableDataCellElementToHTMLTableCellElement
  , readHTMLTableDataCellElement
  , HTMLTableHeaderCellElement
  , htmlTableHeaderCellElementToHTMLTableCellElement
  , readHTMLTableHeaderCellElement
  , HTMLFormElement
  , htmlFormElementToHTMLElement
  , readHTMLFormElement
  , HTMLLabelElement
  , htmlLabelElementToHTMLElement
  , readHTMLLabelElement
  , HTMLInputElement
  , htmlInputElementToHTMLElement
  , readHTMLInputElement
  , HTMLButtonElement
  , htmlButtonElementToHTMLElement
  , readHTMLButtonElement
  , HTMLSelectElement
  , htmlSelectElementToHTMLElement
  , readHTMLSelectElement
  , HTMLDataListElement
  , htmlDataListElementToHTMLElement
  , readHTMLDataListElement
  , HTMLOptGroupElement
  , htmlOptGroupElementToHTMLElement
  , readHTMLOptGroupElement
  , HTMLOptionElement
  , htmlOptionElementToHTMLElement
  , readHTMLOptionElement
  , HTMLTextAreaElement
  , htmlTextAreaElementToHTMLElement
  , readHTMLTextAreaElement
  , HTMLKeygenElement
  , htmlKeygenElementToHTMLElement
  , readHTMLKeygenElement
  , HTMLOutputElement
  , htmlOutputElementToHTMLElement
  , readHTMLOutputElement
  , HTMLProgressElement
  , htmlProgressElementToHTMLElement
  , readHTMLProgressElement
  , HTMLMeterElement
  , htmlMeterElementToHTMLElement
  , readHTMLMeterElement
  , HTMLFieldSetElement
  , htmlFieldSetElementToHTMLElement
  , readHTMLFieldSetElement
  , HTMLLegendElement
  , htmlLegendElementToHTMLElement
  , readHTMLLegendElement
  , HTMLScriptElement
  , htmlScriptElementToHTMLElement
  , readHTMLScriptElement
  , HTMLTemplateElement
  , htmlTemplateElementToHTMLElement
  , readHTMLTemplateElement
  , HTMLCanvasElement
  , htmlCanvasElementToHTMLElement
  , readHTMLCanvasElement
  , ValidityState
  ) where

import Prelude
import Control.Monad.Eff (kind Effect)
import Control.Monad.Except.Trans (except)
import Data.Either (Either(..))
import Data.Foreign (Foreign, F, ForeignError(..), unsafeReadTagged)
import DOM.Event.Types (EventTarget)
import DOM.Node.Types (Node, NonDocumentTypeChildNode, ParentNode, Element, NonElementParentNode, Document)

import Unsafe.Coerce as U

foreign import data Navigator :: Type

foreign import data Location :: Type

foreign import data Window :: Type

foreign import data History :: Type

foreign import data URL :: Type

foreign import data ALERT :: Effect

foreign import data HISTORY :: Effect

foreign import data PROMPT :: Effect

foreign import data CONFIRM :: Effect

foreign import data WINDOW :: Effect

windowToEventTarget :: Window -> EventTarget
windowToEventTarget = U.unsafeCoerce

foreign import data HTMLDocument :: Type

htmlDocumentToDocument :: HTMLDocument -> Document
htmlDocumentToDocument = U.unsafeCoerce

htmlDocumentToNonElementParentNode :: HTMLDocument -> NonElementParentNode
htmlDocumentToNonElementParentNode = U.unsafeCoerce

htmlDocumentToParentNode :: HTMLDocument -> ParentNode
htmlDocumentToParentNode = U.unsafeCoerce

htmlDocumentToNode :: HTMLDocument -> Node
htmlDocumentToNode = U.unsafeCoerce

htmlDocumentToEventTarget :: HTMLDocument -> EventTarget
htmlDocumentToEventTarget = U.unsafeCoerce

readHTMLDocument :: Foreign -> F HTMLDocument
readHTMLDocument = unsafeReadTagged "HTMLDocument"

-- The generic HTML element

foreign import data HTMLElement :: Type

htmlElementToElement :: HTMLElement -> Element
htmlElementToElement = U.unsafeCoerce

htmlElementToParentNode :: HTMLElement -> ParentNode
htmlElementToParentNode = U.unsafeCoerce

htmlElementToNonDocumentTypeChildNode :: HTMLElement -> NonDocumentTypeChildNode
htmlElementToNonDocumentTypeChildNode = U.unsafeCoerce

htmlElementToNode :: HTMLElement -> Node
htmlElementToNode = U.unsafeCoerce

htmlElementToEventTarget :: HTMLElement -> EventTarget
htmlElementToEventTarget = U.unsafeCoerce

foreign import _readHTMLElement
  :: (forall a. String -> F a)
  -> (forall a. a -> F a)
  -> Foreign
  -> F HTMLElement

readHTMLElement :: Foreign -> F HTMLElement
readHTMLElement = _readHTMLElement (except <<< Left <<< pure <<< TypeMismatch "HTMLElement") (except <<< Right)

-- The root element

foreign import data HTMLHtmlElement :: Type

htmlHtmlElementToHTMLElement :: HTMLHtmlElement -> HTMLElement
htmlHtmlElementToHTMLElement = U.unsafeCoerce

readHTMLHtmlElement :: Foreign -> F HTMLHtmlElement
readHTMLHtmlElement = unsafeReadTagged "HTMLHtmlElement"

-- Document metadata

foreign import data HTMLHeadElement :: Type

htmlHeadElementToHTMLElement :: HTMLHeadElement -> HTMLElement
htmlHeadElementToHTMLElement = U.unsafeCoerce

readHTMLHeadElement :: Foreign -> F HTMLHeadElement
readHTMLHeadElement = unsafeReadTagged "HTMLHeadElement"

foreign import data HTMLTitleElement :: Type

htmlTitleElementToHTMLElement :: HTMLTitleElement -> HTMLElement
htmlTitleElementToHTMLElement = U.unsafeCoerce

readHTMLTitleElement :: Foreign -> F HTMLTitleElement
readHTMLTitleElement = unsafeReadTagged "HTMLTitleElement"

foreign import data HTMLBaseElement :: Type

htmlBaseElementToHTMLElement :: HTMLBaseElement -> HTMLElement
htmlBaseElementToHTMLElement = U.unsafeCoerce

readHTMLBaseElement :: Foreign -> F HTMLBaseElement
readHTMLBaseElement = unsafeReadTagged "HTMLBaseElement"

foreign import data HTMLLinkElement :: Type

htmlLinkElementToHTMLElement :: HTMLLinkElement -> HTMLElement
htmlLinkElementToHTMLElement = U.unsafeCoerce

readHTMLLinkElement :: Foreign -> F HTMLLinkElement
readHTMLLinkElement = unsafeReadTagged "HTMLLinkElement"

foreign import data HTMLMetaElement :: Type

htmlMetaElementToHTMLElement :: HTMLMetaElement -> HTMLElement
htmlMetaElementToHTMLElement = U.unsafeCoerce

readHTMLMetaElement :: Foreign -> F HTMLMetaElement
readHTMLMetaElement = unsafeReadTagged "HTMLMetaElement"

foreign import data HTMLStyleElement :: Type

htmlStyleElementToHTMLElement :: HTMLStyleElement -> HTMLElement
htmlStyleElementToHTMLElement = U.unsafeCoerce

readHTMLStyleElement :: Foreign -> F HTMLStyleElement
readHTMLStyleElement = unsafeReadTagged "HTMLStyleElement"

-- Sections

foreign import data HTMLBodyElement :: Type

htmlBodyElementToHTMLElement :: HTMLBodyElement -> HTMLElement
htmlBodyElementToHTMLElement = U.unsafeCoerce

readHTMLBodyElement :: Foreign -> F HTMLBodyElement
readHTMLBodyElement = unsafeReadTagged "HTMLBodyElement"

foreign import data HTMLHeadingElement :: Type

htmlHeadingElementToHTMLElement :: HTMLHeadingElement -> HTMLElement
htmlHeadingElementToHTMLElement = U.unsafeCoerce

readHTMLHeadingElement :: Foreign -> F HTMLHeadingElement
readHTMLHeadingElement = unsafeReadTagged "HTMLHeadingElement"

-- Grouping content

foreign import data HTMLParagraphElement :: Type

htmlParagraphElementToHTMLElement :: HTMLParagraphElement -> HTMLElement
htmlParagraphElementToHTMLElement = U.unsafeCoerce

readHTMLParagraphElement :: Foreign -> F HTMLParagraphElement
readHTMLParagraphElement = unsafeReadTagged "HTMLParagraphElement"

foreign import data HTMLHRElement :: Type

htmlHRElementToHTMLElement :: HTMLHRElement -> HTMLElement
htmlHRElementToHTMLElement = U.unsafeCoerce

readHTMLHRElement :: Foreign -> F HTMLHRElement
readHTMLHRElement = unsafeReadTagged "HTMLHRElement"

foreign import data HTMLPreElement :: Type

htmlPreElementToHTMLElement :: HTMLPreElement -> HTMLElement
htmlPreElementToHTMLElement = U.unsafeCoerce

readHTMLPreElement :: Foreign -> F HTMLPreElement
readHTMLPreElement = unsafeReadTagged "HTMLPreElement"

foreign import data HTMLQuoteElement :: Type

htmlQuoteElementToHTMLElement :: HTMLQuoteElement -> HTMLElement
htmlQuoteElementToHTMLElement = U.unsafeCoerce

readHTMLQuoteElement :: Foreign -> F HTMLQuoteElement
readHTMLQuoteElement = unsafeReadTagged "HTMLQuoteElement"

foreign import data HTMLOListElement :: Type

htmlOListElementToHTMLElement :: HTMLOListElement -> HTMLElement
htmlOListElementToHTMLElement = U.unsafeCoerce

readHTMLOListElement :: Foreign -> F HTMLOListElement
readHTMLOListElement = unsafeReadTagged "HTMLOListElement"

foreign import data HTMLUListElement :: Type

htmlUListElementToHTMLElement :: HTMLUListElement -> HTMLElement
htmlUListElementToHTMLElement = U.unsafeCoerce

readHTMLUListElement :: Foreign -> F HTMLUListElement
readHTMLUListElement = unsafeReadTagged "HTMLUListElement"

foreign import data HTMLLIElement :: Type

htmlLIElementToHTMLElement :: HTMLLIElement -> HTMLElement
htmlLIElementToHTMLElement = U.unsafeCoerce

readHTMLLIElement :: Foreign -> F HTMLLIElement
readHTMLLIElement = unsafeReadTagged "HTMLLIElement"

foreign import data HTMLDListElement :: Type

htmlDListElementToHTMLElement :: HTMLDListElement -> HTMLElement
htmlDListElementToHTMLElement = U.unsafeCoerce

readHTMLDListElement :: Foreign -> F HTMLDListElement
readHTMLDListElement = unsafeReadTagged "HTMLDListElement"

foreign import data HTMLDivElement :: Type

htmlDivElementToHTMLElement :: HTMLDivElement -> HTMLElement
htmlDivElementToHTMLElement = U.unsafeCoerce

readHTMLDivElement :: Foreign -> F HTMLDivElement
readHTMLDivElement = unsafeReadTagged "HTMLDivElement"

-- Text

foreign import data HTMLAnchorElement :: Type

htmlAnchorElementToHTMLElement :: HTMLAnchorElement -> HTMLElement
htmlAnchorElementToHTMLElement = U.unsafeCoerce

readHTMLAnchorElement :: Foreign -> F HTMLAnchorElement
readHTMLAnchorElement = unsafeReadTagged "HTMLAnchorElement"

foreign import data HTMLDataElement :: Type

htmlDataElementToHTMLElement :: HTMLDataElement -> HTMLElement
htmlDataElementToHTMLElement = U.unsafeCoerce

readHTMLDataElement :: Foreign -> F HTMLDataElement
readHTMLDataElement = unsafeReadTagged "HTMLDataElement"

foreign import data HTMLTimeElement :: Type

htmlTimeElementToHTMLElement :: HTMLTimeElement -> HTMLElement
htmlTimeElementToHTMLElement = U.unsafeCoerce

readHTMLTimeElement :: Foreign -> F HTMLTimeElement
readHTMLTimeElement = unsafeReadTagged "HTMLTimeElement"

foreign import data HTMLSpanElement :: Type

htmlSpanElementToHTMLElement :: HTMLSpanElement -> HTMLElement
htmlSpanElementToHTMLElement = U.unsafeCoerce

readHTMLSpanElement :: Foreign -> F HTMLSpanElement
readHTMLSpanElement = unsafeReadTagged "HTMLSpanElement"

foreign import data HTMLBRElement :: Type

htmlBRElementToHTMLElement :: HTMLBRElement -> HTMLElement
htmlBRElementToHTMLElement = U.unsafeCoerce

readHTMLBRElement :: Foreign -> F HTMLBRElement
readHTMLBRElement = unsafeReadTagged "HTMLBRElement"

foreign import data HTMLModElement :: Type

htmlModElementToHTMLElement :: HTMLModElement -> HTMLElement
htmlModElementToHTMLElement = U.unsafeCoerce

readHTMLModElement :: Foreign -> F HTMLModElement
readHTMLModElement = unsafeReadTagged "HTMLModElement"

-- Embedded content

foreign import data HTMLImageElement :: Type

htmlImageElementToHTMLElement :: HTMLImageElement -> HTMLElement
htmlImageElementToHTMLElement = U.unsafeCoerce

readHTMLImageElement :: Foreign -> F HTMLImageElement
readHTMLImageElement = unsafeReadTagged "HTMLImageElement"

foreign import data HTMLIFrameElement :: Type

htmlIFrameElementToHTMLElement :: HTMLIFrameElement -> HTMLElement
htmlIFrameElementToHTMLElement = U.unsafeCoerce

readHTMLIFrameElement :: Foreign -> F HTMLIFrameElement
readHTMLIFrameElement = unsafeReadTagged "HTMLIFrameElement"

foreign import data HTMLEmbedElement :: Type

htmlEmbedElementToHTMLElement :: HTMLEmbedElement -> HTMLElement
htmlEmbedElementToHTMLElement = U.unsafeCoerce

readHTMLEmbedElement :: Foreign -> F HTMLEmbedElement
readHTMLEmbedElement = unsafeReadTagged "HTMLEmbedElement"

foreign import data HTMLObjectElement :: Type

htmlObjectElementToHTMLElement :: HTMLObjectElement -> HTMLElement
htmlObjectElementToHTMLElement = U.unsafeCoerce

readHTMLObjectElement :: Foreign -> F HTMLObjectElement
readHTMLObjectElement = unsafeReadTagged "HTMLObjectElement"

foreign import data HTMLParamElement :: Type

htmlParamElementToHTMLElement :: HTMLParamElement -> HTMLElement
htmlParamElementToHTMLElement = U.unsafeCoerce

readHTMLParamElement :: Foreign -> F HTMLParamElement
readHTMLParamElement = unsafeReadTagged "HTMLParamElement"

foreign import data HTMLMediaElement :: Type

htmlMediaElementToHTMLElement :: HTMLMediaElement -> HTMLElement
htmlMediaElementToHTMLElement = U.unsafeCoerce

readHTMLMediaElement :: Foreign -> F HTMLMediaElement
readHTMLMediaElement = unsafeReadTagged "HTMLMediaElement"

foreign import data HTMLAudioElement :: Type

htmlAudioElementToHTMLMediaElement :: HTMLAudioElement -> HTMLMediaElement
htmlAudioElementToHTMLMediaElement = U.unsafeCoerce

readHTMLAudioElement :: Foreign -> F HTMLAudioElement
readHTMLAudioElement = unsafeReadTagged "HTMLAudioElement"

foreign import data HTMLVideoElement :: Type

htmlVideoElementToHTMLMediaElement :: HTMLVideoElement -> HTMLMediaElement
htmlVideoElementToHTMLMediaElement = U.unsafeCoerce

readHTMLVideoElement :: Foreign -> F HTMLVideoElement
readHTMLVideoElement = unsafeReadTagged "HTMLVideoElement"

foreign import data HTMLSourceElement :: Type

htmlSourceElementToHTMLElement :: HTMLSourceElement -> HTMLElement
htmlSourceElementToHTMLElement = U.unsafeCoerce

readHTMLSourceElement :: Foreign -> F HTMLSourceElement
readHTMLSourceElement = unsafeReadTagged "HTMLSourceElement"

foreign import data HTMLTrackElement :: Type

htmlTrackElementToHTMLElement :: HTMLTrackElement -> HTMLElement
htmlTrackElementToHTMLElement = U.unsafeCoerce

readHTMLTrackElement :: Foreign -> F HTMLTrackElement
readHTMLTrackElement = unsafeReadTagged "HTMLTrackElement"

foreign import data HTMLMapElement :: Type

htmlMapElementToHTMLElement :: HTMLMapElement -> HTMLElement
htmlMapElementToHTMLElement = U.unsafeCoerce

readHTMLMapElement :: Foreign -> F HTMLMapElement
readHTMLMapElement = unsafeReadTagged "HTMLMapElement"

foreign import data HTMLAreaElement :: Type

htmlAreaElementToHTMLElement :: HTMLAreaElement -> HTMLElement
htmlAreaElementToHTMLElement = U.unsafeCoerce

readHTMLAreaElement :: Foreign -> F HTMLAreaElement
readHTMLAreaElement = unsafeReadTagged "HTMLAreaElement"

-- Tabular data

foreign import data HTMLTableElement :: Type

htmlTableElementToHTMLElement :: HTMLTableElement -> HTMLElement
htmlTableElementToHTMLElement = U.unsafeCoerce

readHTMLTableElement :: Foreign -> F HTMLTableElement
readHTMLTableElement = unsafeReadTagged "HTMLTableElement"

foreign import data HTMLTableCaptionElement :: Type

htmlTableCaptionElementToHTMLElement :: HTMLTableCaptionElement -> HTMLElement
htmlTableCaptionElementToHTMLElement = U.unsafeCoerce

readHTMLTableCaptionElement :: Foreign -> F HTMLTableCaptionElement
readHTMLTableCaptionElement = unsafeReadTagged "HTMLTableCaptionElement"

foreign import data HTMLTableColElement :: Type

htmlTableColElementToHTMLElement :: HTMLTableColElement -> HTMLElement
htmlTableColElementToHTMLElement = U.unsafeCoerce

readHTMLTableColElement :: Foreign -> F HTMLTableColElement
readHTMLTableColElement = unsafeReadTagged "HTMLTableColElement"

foreign import data HTMLTableSectionElement :: Type

htmlTableSectionElementToHTMLElement :: HTMLTableSectionElement -> HTMLElement
htmlTableSectionElementToHTMLElement = U.unsafeCoerce

readHTMLTableSectionElement :: Foreign -> F HTMLTableSectionElement
readHTMLTableSectionElement = unsafeReadTagged "HTMLTableSectionElement"

foreign import data HTMLTableRowElement :: Type

htmlTableRowElementToHTMLElement :: HTMLTableRowElement -> HTMLElement
htmlTableRowElementToHTMLElement = U.unsafeCoerce

readHTMLTableRowElement :: Foreign -> F HTMLTableRowElement
readHTMLTableRowElement = unsafeReadTagged "HTMLTableRowElement"

foreign import data HTMLTableCellElement :: Type

htmlTableCellElementToHTMLElement :: HTMLTableCellElement -> HTMLElement
htmlTableCellElementToHTMLElement = U.unsafeCoerce

readHTMLTableCellElement :: Foreign -> F HTMLTableCellElement
readHTMLTableCellElement = unsafeReadTagged "HTMLTableCellElement"

foreign import data HTMLTableDataCellElement :: Type

htmlTableDataCellElementToHTMLTableCellElement :: HTMLTableDataCellElement -> HTMLTableCellElement
htmlTableDataCellElementToHTMLTableCellElement = U.unsafeCoerce

readHTMLTableDataCellElement :: Foreign -> F HTMLTableDataCellElement
readHTMLTableDataCellElement = unsafeReadTagged "HTMLTableDataCellElement"

foreign import data HTMLTableHeaderCellElement :: Type

htmlTableHeaderCellElementToHTMLTableCellElement :: HTMLTableHeaderCellElement -> HTMLTableCellElement
htmlTableHeaderCellElementToHTMLTableCellElement = U.unsafeCoerce

readHTMLTableHeaderCellElement :: Foreign -> F HTMLTableHeaderCellElement
readHTMLTableHeaderCellElement = unsafeReadTagged "HTMLTableHeaderCellElement"

-- Forms

foreign import data HTMLFormElement :: Type

htmlFormElementToHTMLElement :: HTMLFormElement -> HTMLElement
htmlFormElementToHTMLElement = U.unsafeCoerce

readHTMLFormElement :: Foreign -> F HTMLFormElement
readHTMLFormElement = unsafeReadTagged "HTMLFormElement"

foreign import data HTMLLabelElement :: Type

htmlLabelElementToHTMLElement :: HTMLLabelElement -> HTMLElement
htmlLabelElementToHTMLElement = U.unsafeCoerce

readHTMLLabelElement :: Foreign -> F HTMLLabelElement
readHTMLLabelElement = unsafeReadTagged "HTMLLabelElement"

foreign import data HTMLInputElement :: Type

htmlInputElementToHTMLElement :: HTMLInputElement -> HTMLElement
htmlInputElementToHTMLElement = U.unsafeCoerce

readHTMLInputElement :: Foreign -> F HTMLInputElement
readHTMLInputElement = unsafeReadTagged "HTMLInputElement"

foreign import data HTMLButtonElement :: Type

htmlButtonElementToHTMLElement :: HTMLButtonElement -> HTMLElement
htmlButtonElementToHTMLElement = U.unsafeCoerce

readHTMLButtonElement :: Foreign -> F HTMLButtonElement
readHTMLButtonElement = unsafeReadTagged "HTMLButtonElement"

foreign import data HTMLSelectElement :: Type

htmlSelectElementToHTMLElement :: HTMLSelectElement -> HTMLElement
htmlSelectElementToHTMLElement = U.unsafeCoerce

readHTMLSelectElement :: Foreign -> F HTMLSelectElement
readHTMLSelectElement = unsafeReadTagged "HTMLSelectElement"

foreign import data HTMLDataListElement :: Type

htmlDataListElementToHTMLElement :: HTMLDataListElement -> HTMLElement
htmlDataListElementToHTMLElement = U.unsafeCoerce

readHTMLDataListElement :: Foreign -> F HTMLDataListElement
readHTMLDataListElement = unsafeReadTagged "HTMLDataListElement"

foreign import data HTMLOptGroupElement :: Type

htmlOptGroupElementToHTMLElement :: HTMLOptGroupElement -> HTMLElement
htmlOptGroupElementToHTMLElement = U.unsafeCoerce

readHTMLOptGroupElement :: Foreign -> F HTMLOptGroupElement
readHTMLOptGroupElement = unsafeReadTagged "HTMLOptGroupElement"

foreign import data HTMLOptionElement :: Type

htmlOptionElementToHTMLElement :: HTMLOptionElement -> HTMLElement
htmlOptionElementToHTMLElement = U.unsafeCoerce

readHTMLOptionElement :: Foreign -> F HTMLOptionElement
readHTMLOptionElement = unsafeReadTagged "HTMLOptionElement"

foreign import data HTMLTextAreaElement :: Type

htmlTextAreaElementToHTMLElement :: HTMLTextAreaElement -> HTMLElement
htmlTextAreaElementToHTMLElement = U.unsafeCoerce

readHTMLTextAreaElement :: Foreign -> F HTMLTextAreaElement
readHTMLTextAreaElement = unsafeReadTagged "HTMLTextAreaElement"

foreign import data HTMLKeygenElement :: Type

htmlKeygenElementToHTMLElement :: HTMLKeygenElement -> HTMLElement
htmlKeygenElementToHTMLElement = U.unsafeCoerce

readHTMLKeygenElement :: Foreign -> F HTMLKeygenElement
readHTMLKeygenElement = unsafeReadTagged "HTMLKeygenElement"

foreign import data HTMLOutputElement :: Type

htmlOutputElementToHTMLElement :: HTMLOutputElement -> HTMLElement
htmlOutputElementToHTMLElement = U.unsafeCoerce

readHTMLOutputElement :: Foreign -> F HTMLOutputElement
readHTMLOutputElement = unsafeReadTagged "HTMLOutputElement"

foreign import data HTMLProgressElement :: Type

htmlProgressElementToHTMLElement :: HTMLProgressElement -> HTMLElement
htmlProgressElementToHTMLElement = U.unsafeCoerce

readHTMLProgressElement :: Foreign -> F HTMLProgressElement
readHTMLProgressElement = unsafeReadTagged "HTMLProgressElement"

foreign import data HTMLMeterElement :: Type

htmlMeterElementToHTMLElement :: HTMLMeterElement -> HTMLElement
htmlMeterElementToHTMLElement = U.unsafeCoerce

readHTMLMeterElement :: Foreign -> F HTMLMeterElement
readHTMLMeterElement = unsafeReadTagged "HTMLMeterElement"

foreign import data HTMLFieldSetElement :: Type

htmlFieldSetElementToHTMLElement :: HTMLFieldSetElement -> HTMLElement
htmlFieldSetElementToHTMLElement = U.unsafeCoerce

readHTMLFieldSetElement :: Foreign -> F HTMLFieldSetElement
readHTMLFieldSetElement = unsafeReadTagged "HTMLFieldSetElement"

foreign import data HTMLLegendElement :: Type

htmlLegendElementToHTMLElement :: HTMLLegendElement -> HTMLElement
htmlLegendElementToHTMLElement = U.unsafeCoerce

readHTMLLegendElement :: Foreign -> F HTMLLegendElement
readHTMLLegendElement = unsafeReadTagged "HTMLLegendElement"

-- Scripting

foreign import data HTMLScriptElement :: Type

htmlScriptElementToHTMLElement :: HTMLScriptElement -> HTMLElement
htmlScriptElementToHTMLElement = U.unsafeCoerce

readHTMLScriptElement :: Foreign -> F HTMLScriptElement
readHTMLScriptElement = unsafeReadTagged "HTMLScriptElement"

foreign import data HTMLTemplateElement :: Type

htmlTemplateElementToHTMLElement :: HTMLTemplateElement -> HTMLElement
htmlTemplateElementToHTMLElement = U.unsafeCoerce

readHTMLTemplateElement :: Foreign -> F HTMLTemplateElement
readHTMLTemplateElement = unsafeReadTagged "HTMLTemplateElement"

foreign import data HTMLCanvasElement :: Type

htmlCanvasElementToHTMLElement :: HTMLCanvasElement -> HTMLElement
htmlCanvasElementToHTMLElement = U.unsafeCoerce

readHTMLCanvasElement :: Foreign -> F HTMLCanvasElement
readHTMLCanvasElement = unsafeReadTagged "HTMLCanvasElement"

foreign import data ValidityState :: Type

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
import Control.Monad.Except.Trans (except)
import Data.Either (Either(..))
import Data.Foreign (Foreign, F, ForeignError(..), unsafeReadTagged)
import Data.Foreign.Class (class IsForeign)
import DOM.Event.Types (EventTarget)
import DOM.Node.Types (Node, NonDocumentTypeChildNode, ParentNode, Element, NonElementParentNode, Document)

import Unsafe.Coerce as U

foreign import data Navigator :: *

foreign import data Location :: *

foreign import data Window :: *

foreign import data History :: *

foreign import data URL :: *

foreign import data ALERT :: !

foreign import data HISTORY :: !

foreign import data PROMPT :: !

foreign import data CONFIRM :: !

foreign import data WINDOW :: !

windowToEventTarget :: Window -> EventTarget
windowToEventTarget = U.unsafeCoerce

foreign import data HTMLDocument :: *

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

instance isForeignHTMLDocument :: IsForeign HTMLDocument where
  read = readHTMLDocument

-- The generic HTML element

foreign import data HTMLElement :: *

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

instance isForeignHTMLElement :: IsForeign HTMLElement where
  read = readHTMLElement

-- The root element

foreign import data HTMLHtmlElement :: *

htmlHtmlElementToHTMLElement :: HTMLHtmlElement -> HTMLElement
htmlHtmlElementToHTMLElement = U.unsafeCoerce

readHTMLHtmlElement :: Foreign -> F HTMLHtmlElement
readHTMLHtmlElement = unsafeReadTagged "HTMLHtmlElement"

instance isForeignHTMLHtmlElement :: IsForeign HTMLHtmlElement where
  read = readHTMLHtmlElement

-- Document metadata

foreign import data HTMLHeadElement :: *

htmlHeadElementToHTMLElement :: HTMLHeadElement -> HTMLElement
htmlHeadElementToHTMLElement = U.unsafeCoerce

readHTMLHeadElement :: Foreign -> F HTMLHeadElement
readHTMLHeadElement = unsafeReadTagged "HTMLHeadElement"

instance isForeignHTMLHeadElement :: IsForeign HTMLHeadElement where
  read = readHTMLHeadElement

foreign import data HTMLTitleElement :: *

htmlTitleElementToHTMLElement :: HTMLTitleElement -> HTMLElement
htmlTitleElementToHTMLElement = U.unsafeCoerce

readHTMLTitleElement :: Foreign -> F HTMLTitleElement
readHTMLTitleElement = unsafeReadTagged "HTMLTitleElement"

instance isForeignHTMLTitleElement :: IsForeign HTMLTitleElement where
  read = readHTMLTitleElement

foreign import data HTMLBaseElement :: *

htmlBaseElementToHTMLElement :: HTMLBaseElement -> HTMLElement
htmlBaseElementToHTMLElement = U.unsafeCoerce

readHTMLBaseElement :: Foreign -> F HTMLBaseElement
readHTMLBaseElement = unsafeReadTagged "HTMLBaseElement"

instance isForeignHTMLBaseElement :: IsForeign HTMLBaseElement where
  read = readHTMLBaseElement

foreign import data HTMLLinkElement :: *

htmlLinkElementToHTMLElement :: HTMLLinkElement -> HTMLElement
htmlLinkElementToHTMLElement = U.unsafeCoerce

readHTMLLinkElement :: Foreign -> F HTMLLinkElement
readHTMLLinkElement = unsafeReadTagged "HTMLLinkElement"

instance isForeignHTMLLinkElement :: IsForeign HTMLLinkElement where
  read = readHTMLLinkElement

foreign import data HTMLMetaElement :: *

htmlMetaElementToHTMLElement :: HTMLMetaElement -> HTMLElement
htmlMetaElementToHTMLElement = U.unsafeCoerce

readHTMLMetaElement :: Foreign -> F HTMLMetaElement
readHTMLMetaElement = unsafeReadTagged "HTMLMetaElement"

instance isForeignHTMLMetaElement :: IsForeign HTMLMetaElement where
  read = readHTMLMetaElement

foreign import data HTMLStyleElement :: *

htmlStyleElementToHTMLElement :: HTMLStyleElement -> HTMLElement
htmlStyleElementToHTMLElement = U.unsafeCoerce

readHTMLStyleElement :: Foreign -> F HTMLStyleElement
readHTMLStyleElement = unsafeReadTagged "HTMLStyleElement"

instance isForeignHTMLStyleElement :: IsForeign HTMLStyleElement where
  read = readHTMLStyleElement

-- Sections

foreign import data HTMLBodyElement :: *

htmlBodyElementToHTMLElement :: HTMLBodyElement -> HTMLElement
htmlBodyElementToHTMLElement = U.unsafeCoerce

readHTMLBodyElement :: Foreign -> F HTMLBodyElement
readHTMLBodyElement = unsafeReadTagged "HTMLBodyElement"

instance isForeignHTMLBodyElement :: IsForeign HTMLBodyElement where
  read = readHTMLBodyElement

foreign import data HTMLHeadingElement :: *

htmlHeadingElementToHTMLElement :: HTMLHeadingElement -> HTMLElement
htmlHeadingElementToHTMLElement = U.unsafeCoerce

readHTMLHeadingElement :: Foreign -> F HTMLHeadingElement
readHTMLHeadingElement = unsafeReadTagged "HTMLHeadingElement"

instance isForeignHTMLHeadingElement :: IsForeign HTMLHeadingElement where
  read = readHTMLHeadingElement

-- Grouping content

foreign import data HTMLParagraphElement :: *

htmlParagraphElementToHTMLElement :: HTMLParagraphElement -> HTMLElement
htmlParagraphElementToHTMLElement = U.unsafeCoerce

readHTMLParagraphElement :: Foreign -> F HTMLParagraphElement
readHTMLParagraphElement = unsafeReadTagged "HTMLParagraphElement"

instance isForeignHTMLParagraphElement :: IsForeign HTMLParagraphElement where
  read = readHTMLParagraphElement

foreign import data HTMLHRElement :: *

htmlHRElementToHTMLElement :: HTMLHRElement -> HTMLElement
htmlHRElementToHTMLElement = U.unsafeCoerce

readHTMLHRElement :: Foreign -> F HTMLHRElement
readHTMLHRElement = unsafeReadTagged "HTMLHRElement"

instance isForeignHTMLHRElement :: IsForeign HTMLHRElement where
  read = readHTMLHRElement

foreign import data HTMLPreElement :: *

htmlPreElementToHTMLElement :: HTMLPreElement -> HTMLElement
htmlPreElementToHTMLElement = U.unsafeCoerce

readHTMLPreElement :: Foreign -> F HTMLPreElement
readHTMLPreElement = unsafeReadTagged "HTMLPreElement"

instance isForeignHTMLPreElement :: IsForeign HTMLPreElement where
  read = readHTMLPreElement

foreign import data HTMLQuoteElement :: *

htmlQuoteElementToHTMLElement :: HTMLQuoteElement -> HTMLElement
htmlQuoteElementToHTMLElement = U.unsafeCoerce

readHTMLQuoteElement :: Foreign -> F HTMLQuoteElement
readHTMLQuoteElement = unsafeReadTagged "HTMLQuoteElement"

instance isForeignHTMLQuoteElement :: IsForeign HTMLQuoteElement where
  read = readHTMLQuoteElement

foreign import data HTMLOListElement :: *

htmlOListElementToHTMLElement :: HTMLOListElement -> HTMLElement
htmlOListElementToHTMLElement = U.unsafeCoerce

readHTMLOListElement :: Foreign -> F HTMLOListElement
readHTMLOListElement = unsafeReadTagged "HTMLOListElement"

instance isForeignHTMLOListElement :: IsForeign HTMLOListElement where
  read = readHTMLOListElement

foreign import data HTMLUListElement :: *

htmlUListElementToHTMLElement :: HTMLUListElement -> HTMLElement
htmlUListElementToHTMLElement = U.unsafeCoerce

readHTMLUListElement :: Foreign -> F HTMLUListElement
readHTMLUListElement = unsafeReadTagged "HTMLUListElement"

instance isForeignHTMLUListElement :: IsForeign HTMLUListElement where
  read = readHTMLUListElement

foreign import data HTMLLIElement :: *

htmlLIElementToHTMLElement :: HTMLLIElement -> HTMLElement
htmlLIElementToHTMLElement = U.unsafeCoerce

readHTMLLIElement :: Foreign -> F HTMLLIElement
readHTMLLIElement = unsafeReadTagged "HTMLLIElement"

instance isForeignHTMLLIElement :: IsForeign HTMLLIElement where
  read = readHTMLLIElement

foreign import data HTMLDListElement :: *

htmlDListElementToHTMLElement :: HTMLDListElement -> HTMLElement
htmlDListElementToHTMLElement = U.unsafeCoerce

readHTMLDListElement :: Foreign -> F HTMLDListElement
readHTMLDListElement = unsafeReadTagged "HTMLDListElement"

instance isForeignHTMLDListElement :: IsForeign HTMLDListElement where
  read = readHTMLDListElement

foreign import data HTMLDivElement :: *

htmlDivElementToHTMLElement :: HTMLDivElement -> HTMLElement
htmlDivElementToHTMLElement = U.unsafeCoerce

readHTMLDivElement :: Foreign -> F HTMLDivElement
readHTMLDivElement = unsafeReadTagged "HTMLDivElement"

instance isForeignHTMLDivElement :: IsForeign HTMLDivElement where
  read = readHTMLDivElement

-- Text

foreign import data HTMLAnchorElement :: *

htmlAnchorElementToHTMLElement :: HTMLAnchorElement -> HTMLElement
htmlAnchorElementToHTMLElement = U.unsafeCoerce

readHTMLAnchorElement :: Foreign -> F HTMLAnchorElement
readHTMLAnchorElement = unsafeReadTagged "HTMLAnchorElement"

instance isForeignHTMLAnchorElement :: IsForeign HTMLAnchorElement where
  read = readHTMLAnchorElement

foreign import data HTMLDataElement :: *

htmlDataElementToHTMLElement :: HTMLDataElement -> HTMLElement
htmlDataElementToHTMLElement = U.unsafeCoerce

readHTMLDataElement :: Foreign -> F HTMLDataElement
readHTMLDataElement = unsafeReadTagged "HTMLDataElement"

instance isForeignHTMLDataElement :: IsForeign HTMLDataElement where
  read = readHTMLDataElement

foreign import data HTMLTimeElement :: *

htmlTimeElementToHTMLElement :: HTMLTimeElement -> HTMLElement
htmlTimeElementToHTMLElement = U.unsafeCoerce

readHTMLTimeElement :: Foreign -> F HTMLTimeElement
readHTMLTimeElement = unsafeReadTagged "HTMLTimeElement"

instance isForeignHTMLTimeElement :: IsForeign HTMLTimeElement where
  read = readHTMLTimeElement

foreign import data HTMLSpanElement :: *

htmlSpanElementToHTMLElement :: HTMLSpanElement -> HTMLElement
htmlSpanElementToHTMLElement = U.unsafeCoerce

readHTMLSpanElement :: Foreign -> F HTMLSpanElement
readHTMLSpanElement = unsafeReadTagged "HTMLSpanElement"

instance isForeignHTMLSpanElement :: IsForeign HTMLSpanElement where
  read = readHTMLSpanElement

foreign import data HTMLBRElement :: *

htmlBRElementToHTMLElement :: HTMLBRElement -> HTMLElement
htmlBRElementToHTMLElement = U.unsafeCoerce

readHTMLBRElement :: Foreign -> F HTMLBRElement
readHTMLBRElement = unsafeReadTagged "HTMLBRElement"

instance isForeignHTMLBRElement :: IsForeign HTMLBRElement where
  read = readHTMLBRElement

foreign import data HTMLModElement :: *

htmlModElementToHTMLElement :: HTMLModElement -> HTMLElement
htmlModElementToHTMLElement = U.unsafeCoerce

readHTMLModElement :: Foreign -> F HTMLModElement
readHTMLModElement = unsafeReadTagged "HTMLModElement"

instance isForeignHTMLModElement :: IsForeign HTMLModElement where
  read = readHTMLModElement

-- Embedded content

foreign import data HTMLImageElement :: *

htmlImageElementToHTMLElement :: HTMLImageElement -> HTMLElement
htmlImageElementToHTMLElement = U.unsafeCoerce

readHTMLImageElement :: Foreign -> F HTMLImageElement
readHTMLImageElement = unsafeReadTagged "HTMLImageElement"

instance isForeignHTMLImageElement :: IsForeign HTMLImageElement where
  read = readHTMLImageElement

foreign import data HTMLIFrameElement :: *

htmlIFrameElementToHTMLElement :: HTMLIFrameElement -> HTMLElement
htmlIFrameElementToHTMLElement = U.unsafeCoerce

readHTMLIFrameElement :: Foreign -> F HTMLIFrameElement
readHTMLIFrameElement = unsafeReadTagged "HTMLIFrameElement"

instance isForeignHTMLIFrameElement :: IsForeign HTMLIFrameElement where
  read = readHTMLIFrameElement

foreign import data HTMLEmbedElement :: *

htmlEmbedElementToHTMLElement :: HTMLEmbedElement -> HTMLElement
htmlEmbedElementToHTMLElement = U.unsafeCoerce

readHTMLEmbedElement :: Foreign -> F HTMLEmbedElement
readHTMLEmbedElement = unsafeReadTagged "HTMLEmbedElement"

instance isForeignHTMLEmbedElement :: IsForeign HTMLEmbedElement where
  read = readHTMLEmbedElement

foreign import data HTMLObjectElement :: *

htmlObjectElementToHTMLElement :: HTMLObjectElement -> HTMLElement
htmlObjectElementToHTMLElement = U.unsafeCoerce

readHTMLObjectElement :: Foreign -> F HTMLObjectElement
readHTMLObjectElement = unsafeReadTagged "HTMLObjectElement"

instance isForeignHTMLObjectElement :: IsForeign HTMLObjectElement where
  read = readHTMLObjectElement

foreign import data HTMLParamElement :: *

htmlParamElementToHTMLElement :: HTMLParamElement -> HTMLElement
htmlParamElementToHTMLElement = U.unsafeCoerce

readHTMLParamElement :: Foreign -> F HTMLParamElement
readHTMLParamElement = unsafeReadTagged "HTMLParamElement"

instance isForeignHTMLParamElement :: IsForeign HTMLParamElement where
  read = readHTMLParamElement

foreign import data HTMLMediaElement :: *

htmlMediaElementToHTMLElement :: HTMLMediaElement -> HTMLElement
htmlMediaElementToHTMLElement = U.unsafeCoerce

readHTMLMediaElement :: Foreign -> F HTMLMediaElement
readHTMLMediaElement = unsafeReadTagged "HTMLMediaElement"

foreign import data HTMLAudioElement :: *

htmlAudioElementToHTMLMediaElement :: HTMLAudioElement -> HTMLMediaElement
htmlAudioElementToHTMLMediaElement = U.unsafeCoerce

readHTMLAudioElement :: Foreign -> F HTMLAudioElement
readHTMLAudioElement = unsafeReadTagged "HTMLAudioElement"

foreign import data HTMLVideoElement :: *

htmlVideoElementToHTMLMediaElement :: HTMLVideoElement -> HTMLMediaElement
htmlVideoElementToHTMLMediaElement = U.unsafeCoerce

readHTMLVideoElement :: Foreign -> F HTMLVideoElement
readHTMLVideoElement = unsafeReadTagged "HTMLVideoElement"

foreign import data HTMLSourceElement :: *

htmlSourceElementToHTMLElement :: HTMLSourceElement -> HTMLElement
htmlSourceElementToHTMLElement = U.unsafeCoerce

readHTMLSourceElement :: Foreign -> F HTMLSourceElement
readHTMLSourceElement = unsafeReadTagged "HTMLSourceElement"

instance isForeignHTMLSourceElement :: IsForeign HTMLSourceElement where
  read = readHTMLSourceElement

foreign import data HTMLTrackElement :: *

htmlTrackElementToHTMLElement :: HTMLTrackElement -> HTMLElement
htmlTrackElementToHTMLElement = U.unsafeCoerce

readHTMLTrackElement :: Foreign -> F HTMLTrackElement
readHTMLTrackElement = unsafeReadTagged "HTMLTrackElement"

instance isForeignHTMLTrackElement :: IsForeign HTMLTrackElement where
  read = readHTMLTrackElement

foreign import data HTMLMapElement :: *

htmlMapElementToHTMLElement :: HTMLMapElement -> HTMLElement
htmlMapElementToHTMLElement = U.unsafeCoerce

readHTMLMapElement :: Foreign -> F HTMLMapElement
readHTMLMapElement = unsafeReadTagged "HTMLMapElement"

instance isForeignHTMLMapElement :: IsForeign HTMLMapElement where
  read = readHTMLMapElement

foreign import data HTMLAreaElement :: *

htmlAreaElementToHTMLElement :: HTMLAreaElement -> HTMLElement
htmlAreaElementToHTMLElement = U.unsafeCoerce

readHTMLAreaElement :: Foreign -> F HTMLAreaElement
readHTMLAreaElement = unsafeReadTagged "HTMLAreaElement"

instance isForeignHTMLAreaElement :: IsForeign HTMLAreaElement where
  read = readHTMLAreaElement

-- Tabular data

foreign import data HTMLTableElement :: *

htmlTableElementToHTMLElement :: HTMLTableElement -> HTMLElement
htmlTableElementToHTMLElement = U.unsafeCoerce

readHTMLTableElement :: Foreign -> F HTMLTableElement
readHTMLTableElement = unsafeReadTagged "HTMLTableElement"

instance isForeignHTMLTableElement :: IsForeign HTMLTableElement where
  read = readHTMLTableElement

foreign import data HTMLTableCaptionElement :: *

htmlTableCaptionElementToHTMLElement :: HTMLTableCaptionElement -> HTMLElement
htmlTableCaptionElementToHTMLElement = U.unsafeCoerce

readHTMLTableCaptionElement :: Foreign -> F HTMLTableCaptionElement
readHTMLTableCaptionElement = unsafeReadTagged "HTMLTableCaptionElement"

instance isForeignHTMLTableCaptionElement :: IsForeign HTMLTableCaptionElement where
  read = readHTMLTableCaptionElement

foreign import data HTMLTableColElement :: *

htmlTableColElementToHTMLElement :: HTMLTableColElement -> HTMLElement
htmlTableColElementToHTMLElement = U.unsafeCoerce

readHTMLTableColElement :: Foreign -> F HTMLTableColElement
readHTMLTableColElement = unsafeReadTagged "HTMLTableColElement"

instance isForeignHTMLTableColElement :: IsForeign HTMLTableColElement where
  read = readHTMLTableColElement

foreign import data HTMLTableSectionElement :: *

htmlTableSectionElementToHTMLElement :: HTMLTableSectionElement -> HTMLElement
htmlTableSectionElementToHTMLElement = U.unsafeCoerce

readHTMLTableSectionElement :: Foreign -> F HTMLTableSectionElement
readHTMLTableSectionElement = unsafeReadTagged "HTMLTableSectionElement"

instance isForeignHTMLTableSectionElement :: IsForeign HTMLTableSectionElement where
  read = readHTMLTableSectionElement

foreign import data HTMLTableRowElement :: *

htmlTableRowElementToHTMLElement :: HTMLTableRowElement -> HTMLElement
htmlTableRowElementToHTMLElement = U.unsafeCoerce

readHTMLTableRowElement :: Foreign -> F HTMLTableRowElement
readHTMLTableRowElement = unsafeReadTagged "HTMLTableRowElement"

instance isForeignHTMLTableRowElement :: IsForeign HTMLTableRowElement where
  read = readHTMLTableRowElement

foreign import data HTMLTableCellElement :: *

htmlTableCellElementToHTMLElement :: HTMLTableCellElement -> HTMLElement
htmlTableCellElementToHTMLElement = U.unsafeCoerce

readHTMLTableCellElement :: Foreign -> F HTMLTableCellElement
readHTMLTableCellElement = unsafeReadTagged "HTMLTableCellElement"

foreign import data HTMLTableDataCellElement :: *

htmlTableDataCellElementToHTMLTableCellElement :: HTMLTableDataCellElement -> HTMLTableCellElement
htmlTableDataCellElementToHTMLTableCellElement = U.unsafeCoerce

readHTMLTableDataCellElement :: Foreign -> F HTMLTableDataCellElement
readHTMLTableDataCellElement = unsafeReadTagged "HTMLTableDataCellElement"

foreign import data HTMLTableHeaderCellElement :: *

htmlTableHeaderCellElementToHTMLTableCellElement :: HTMLTableHeaderCellElement -> HTMLTableCellElement
htmlTableHeaderCellElementToHTMLTableCellElement = U.unsafeCoerce

readHTMLTableHeaderCellElement :: Foreign -> F HTMLTableHeaderCellElement
readHTMLTableHeaderCellElement = unsafeReadTagged "HTMLTableHeaderCellElement"

-- Forms

foreign import data HTMLFormElement :: *

htmlFormElementToHTMLElement :: HTMLFormElement -> HTMLElement
htmlFormElementToHTMLElement = U.unsafeCoerce

readHTMLFormElement :: Foreign -> F HTMLFormElement
readHTMLFormElement = unsafeReadTagged "HTMLFormElement"

instance isForeignHTMLFormElement :: IsForeign HTMLFormElement where
  read = readHTMLFormElement

foreign import data HTMLLabelElement :: *

htmlLabelElementToHTMLElement :: HTMLLabelElement -> HTMLElement
htmlLabelElementToHTMLElement = U.unsafeCoerce

readHTMLLabelElement :: Foreign -> F HTMLLabelElement
readHTMLLabelElement = unsafeReadTagged "HTMLLabelElement"

instance isForeignHTMLLabelElement :: IsForeign HTMLLabelElement where
  read = readHTMLLabelElement

foreign import data HTMLInputElement :: *

htmlInputElementToHTMLElement :: HTMLInputElement -> HTMLElement
htmlInputElementToHTMLElement = U.unsafeCoerce

readHTMLInputElement :: Foreign -> F HTMLInputElement
readHTMLInputElement = unsafeReadTagged "HTMLInputElement"

instance isForeignHTMLInputElement :: IsForeign HTMLInputElement where
  read = readHTMLInputElement

foreign import data HTMLButtonElement :: *

htmlButtonElementToHTMLElement :: HTMLButtonElement -> HTMLElement
htmlButtonElementToHTMLElement = U.unsafeCoerce

readHTMLButtonElement :: Foreign -> F HTMLButtonElement
readHTMLButtonElement = unsafeReadTagged "HTMLButtonElement"

instance isForeignHTMLButtonElement :: IsForeign HTMLButtonElement where
  read = readHTMLButtonElement

foreign import data HTMLSelectElement :: *

htmlSelectElementToHTMLElement :: HTMLSelectElement -> HTMLElement
htmlSelectElementToHTMLElement = U.unsafeCoerce

readHTMLSelectElement :: Foreign -> F HTMLSelectElement
readHTMLSelectElement = unsafeReadTagged "HTMLSelectElement"

instance isForeignHTMLSelectElement :: IsForeign HTMLSelectElement where
  read = readHTMLSelectElement

foreign import data HTMLDataListElement :: *

htmlDataListElementToHTMLElement :: HTMLDataListElement -> HTMLElement
htmlDataListElementToHTMLElement = U.unsafeCoerce

readHTMLDataListElement :: Foreign -> F HTMLDataListElement
readHTMLDataListElement = unsafeReadTagged "HTMLDataListElement"

instance isForeignHTMLDataListElement :: IsForeign HTMLDataListElement where
  read = readHTMLDataListElement

foreign import data HTMLOptGroupElement :: *

htmlOptGroupElementToHTMLElement :: HTMLOptGroupElement -> HTMLElement
htmlOptGroupElementToHTMLElement = U.unsafeCoerce

readHTMLOptGroupElement :: Foreign -> F HTMLOptGroupElement
readHTMLOptGroupElement = unsafeReadTagged "HTMLOptGroupElement"

instance isForeignHTMLOptGroupElement :: IsForeign HTMLOptGroupElement where
  read = readHTMLOptGroupElement

foreign import data HTMLOptionElement :: *

htmlOptionElementToHTMLElement :: HTMLOptionElement -> HTMLElement
htmlOptionElementToHTMLElement = U.unsafeCoerce

readHTMLOptionElement :: Foreign -> F HTMLOptionElement
readHTMLOptionElement = unsafeReadTagged "HTMLOptionElement"

instance isForeignHTMLOptionElement :: IsForeign HTMLOptionElement where
  read = readHTMLOptionElement

foreign import data HTMLTextAreaElement :: *

htmlTextAreaElementToHTMLElement :: HTMLTextAreaElement -> HTMLElement
htmlTextAreaElementToHTMLElement = U.unsafeCoerce

readHTMLTextAreaElement :: Foreign -> F HTMLTextAreaElement
readHTMLTextAreaElement = unsafeReadTagged "HTMLTextAreaElement"

instance isForeignHTMLTextAreaElement :: IsForeign HTMLTextAreaElement where
  read = readHTMLTextAreaElement

foreign import data HTMLKeygenElement :: *

htmlKeygenElementToHTMLElement :: HTMLKeygenElement -> HTMLElement
htmlKeygenElementToHTMLElement = U.unsafeCoerce

readHTMLKeygenElement :: Foreign -> F HTMLKeygenElement
readHTMLKeygenElement = unsafeReadTagged "HTMLKeygenElement"

instance isForeignHTMLKeygenElement :: IsForeign HTMLKeygenElement where
  read = readHTMLKeygenElement

foreign import data HTMLOutputElement :: *

htmlOutputElementToHTMLElement :: HTMLOutputElement -> HTMLElement
htmlOutputElementToHTMLElement = U.unsafeCoerce

readHTMLOutputElement :: Foreign -> F HTMLOutputElement
readHTMLOutputElement = unsafeReadTagged "HTMLOutputElement"

instance isForeignHTMLOutputElement :: IsForeign HTMLOutputElement where
  read = readHTMLOutputElement

foreign import data HTMLProgressElement :: *

htmlProgressElementToHTMLElement :: HTMLProgressElement -> HTMLElement
htmlProgressElementToHTMLElement = U.unsafeCoerce

readHTMLProgressElement :: Foreign -> F HTMLProgressElement
readHTMLProgressElement = unsafeReadTagged "HTMLProgressElement"

instance isForeignHTMLProgressElement :: IsForeign HTMLProgressElement where
  read = readHTMLProgressElement

foreign import data HTMLMeterElement :: *

htmlMeterElementToHTMLElement :: HTMLMeterElement -> HTMLElement
htmlMeterElementToHTMLElement = U.unsafeCoerce

readHTMLMeterElement :: Foreign -> F HTMLMeterElement
readHTMLMeterElement = unsafeReadTagged "HTMLMeterElement"

instance isForeignHTMLMeterElement :: IsForeign HTMLMeterElement where
  read = readHTMLMeterElement

foreign import data HTMLFieldSetElement :: *

htmlFieldSetElementToHTMLElement :: HTMLFieldSetElement -> HTMLElement
htmlFieldSetElementToHTMLElement = U.unsafeCoerce

readHTMLFieldSetElement :: Foreign -> F HTMLFieldSetElement
readHTMLFieldSetElement = unsafeReadTagged "HTMLFieldSetElement"

instance isForeignHTMLFieldSetElement :: IsForeign HTMLFieldSetElement where
  read = readHTMLFieldSetElement

foreign import data HTMLLegendElement :: *

htmlLegendElementToHTMLElement :: HTMLLegendElement -> HTMLElement
htmlLegendElementToHTMLElement = U.unsafeCoerce

readHTMLLegendElement :: Foreign -> F HTMLLegendElement
readHTMLLegendElement = unsafeReadTagged "HTMLLegendElement"

instance isForeignHTMLLegendElement :: IsForeign HTMLLegendElement where
  read = readHTMLLegendElement

-- Scripting

foreign import data HTMLScriptElement :: *

htmlScriptElementToHTMLElement :: HTMLScriptElement -> HTMLElement
htmlScriptElementToHTMLElement = U.unsafeCoerce

readHTMLScriptElement :: Foreign -> F HTMLScriptElement
readHTMLScriptElement = unsafeReadTagged "HTMLScriptElement"

instance isForeignHTMLScriptElement :: IsForeign HTMLScriptElement where
  read = readHTMLScriptElement

foreign import data HTMLTemplateElement :: *

htmlTemplateElementToHTMLElement :: HTMLTemplateElement -> HTMLElement
htmlTemplateElementToHTMLElement = U.unsafeCoerce

readHTMLTemplateElement :: Foreign -> F HTMLTemplateElement
readHTMLTemplateElement = unsafeReadTagged "HTMLTemplateElement"

instance isForeignHTMLTemplateElement :: IsForeign HTMLTemplateElement where
  read = readHTMLTemplateElement

foreign import data HTMLCanvasElement :: *

htmlCanvasElementToHTMLElement :: HTMLCanvasElement -> HTMLElement
htmlCanvasElementToHTMLElement = U.unsafeCoerce

readHTMLCanvasElement :: Foreign -> F HTMLCanvasElement
readHTMLCanvasElement = unsafeReadTagged "HTMLCanvasElement"

instance isForeignHTMLCanvasElement :: IsForeign HTMLCanvasElement where
  read = readHTMLCanvasElement

foreign import data ValidityState :: *

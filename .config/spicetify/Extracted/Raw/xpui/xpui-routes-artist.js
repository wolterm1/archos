"use strict";(("undefined"!=typeof self?self:global).webpackChunkclient_web=("undefined"!=typeof self?self:global).webpackChunkclient_web||[]).push([[1408],{1335:(e,o,n)=>{n.d(o,{g:()=>A});var t=n(30758),i=n(3074),l=n.n(i),a=n(56570),r=n(92441),s=n(6128),c=n(63166),d=n(11846),u=n(44979),b=n(29213),h=n(85834),m=n(99903),x=n(1127),S=n(12433),f=n(89865),w=n(64721),p=n(41617),v=n(67579),y=n(86070);const C=({onSelect:e})=>{const{viewMode:o,setViewMode:n}=(0,p.a)();return(0,y.jsxs)(y.Fragment,{children:[(0,y.jsx)(x.y,{children:w.Ru.get("web-player.your-library-x.sort-and-view-picker.view-as")}),v.i.map((({value:t,icon:i,text:l},a)=>(0,y.jsx)(S.D,{role:"menuitemradio","aria-checked":o===t,divider:a===v.i.length-1?"after":void 0,autoClose:!1,leadingIcon:i(),onClick:()=>{n(t),e?.(t)},children:l()},t)))]})},g=({heading:e,selected:o,onSelect:n,options:t,enableViewModeMenu:i=!1,onSelectViewMode:l,sortOrder:a,...r})=>{let s;a&&(a===f.H.ASC||a===f.H.SECONDARY_ASC?s=b.U:a!==f.H.DESC&&a!==f.H.SECONDARY_DESC||(s=h.R));return(0,y.jsxs)(m.W,{getInitialFocusElement:e=>e?.querySelector('[aria-checked="true"]'),...r,children:[e?(0,y.jsx)(x.y,{children:e}):null,t.map((({key:e,value:t},i)=>(0,y.jsx)(S.D,{role:"menuitemradio","aria-checked":e===o.key,CheckedIcon:s,onClick:()=>n(e,i),children:t},e))),i&&(0,y.jsx)(C,{onSelect:l})]})};var k=n(30164),j=n(1620),M=n(27602);const N="x-sortBox-sortDropdown",O="cvTLPmjt6T7M85EKcB8w",E="SbDHY3fVADNJ4l9qOLQ2",D=({isOpen:e,className:o})=>e?(0,y.jsx)(a.J,{size:"small","aria-hidden":"true",className:o}):(0,y.jsx)(r.y,{size:"small","aria-hidden":"true",className:o}),A=({heading:e,options:o,selected:n,onSelect:i,sortOrder:a,variant:r="bodySmall",semanticColor:b,disabled:h,onClick:m,ariaLabel:x,enableViewModeMenu:S=!1})=>{const f=(0,c.NC)(M.mA)&&S,{viewMode:w}=(0,k.a)();n||(n=o?.[0]);const p=v.i.find((({value:e})=>e===w))||v.i[0],C=(0,t.useMemo)((()=>`sortboxlist-${l().create().hex}`),[]),{spec:A,logger:F}=(0,j.r)(d.d,{});return(0,y.jsx)(u.b,{menu:(0,y.jsx)(g,{selected:n,options:o,onSelect:(e,o)=>{i(e,o);const n=A.sortBySectionFactory().sortOptionFactory({identifier:e}).hitSort();F.logInteraction(n)},sortOrder:a,heading:e,enableViewModeMenu:f,onSelectViewMode:e=>{const o=A.viewAsSectionFactory().viewOptionFactory({identifier:e}).hitUiElementToggle();F.logInteraction(o)},id:C}),children:(e,o,t)=>(0,y.jsxs)("button",{className:N,onClick:e=>{h||(m?.(e),o(e))},ref:t,type:"button","aria-label":x,role:"combobox","aria-controls":C,"aria-expanded":e,children:[(0,y.jsx)(s.E,{"data-sortbox-label":!0,semanticColor:b,variant:r,className:O,children:n?.value||(f?p.text():"")}),f?p.icon():(0,y.jsx)(D,{isOpen:e,className:E})]})})}},8476:(e,o,n)=>{n.d(o,{f:()=>r,z:()=>a});var t=n(30758),i=n(50780),l=n(57286);function a(e,o=i.l0o){const n=(0,l.as)();return(0,t.useEffect)((()=>(e&&n((0,l.Mo)(e)),()=>{n((0,l.Hf)())})),[e,n]),e||o}const r=({color:e,fallbackColor:o})=>(a(e,o),null)}}]);
//# sourceMappingURL=xpui-routes-artist.js.map
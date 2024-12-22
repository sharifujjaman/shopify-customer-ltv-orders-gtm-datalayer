___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "MACRO",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "Convert to Number 🔢",
  "categories": [
    "UTILITY"
  ],
  "description": "🔢 Converts strings to numbers. \n✅ Pure numeric strings (\"123\" → 123) and booleans (true → 1) work. \n❌ Mixed strings (\"123abc\") and objects → NaN.",
  "containerContexts": [
    "SERVER"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "TEXT",
    "name": "entity",
    "displayName": "Reference to an entity to be converted to a number",
    "simpleValueType": true,
    "help": "Enter a reference to a variable that contains an entity to be converted to a number.\nThis entity can be of any type (string, number, boolean, null, undefined, Array, Object, or Function).\n\u003cbr\u003e\n\n\u003cul\u003e \u003cli\u003e🚫 \u003cstrong\u003eFunction:\u003c/strong\u003e Returns \u003cem\u003eundefined\u003c/em\u003e.\u003c/li\u003e \u003cli\u003e✅ \u003cstrong\u003ePure Numeric String\u003c/strong\u003e (e.g., \"123\"): Converts to a number (e.g., 123).\u003c/li\u003e \u003cli\u003e❌ \u003cstrong\u003eNon-Numeric String\u003c/strong\u003e (e.g., \"123abc\"): Returns \u003cem\u003eNaN\u003c/em\u003e.\u003c/li\u003e \u003cli\u003e🔢 \u003cstrong\u003eBooleans:\u003c/strong\u003e \u003ccode\u003etrue\u003c/code\u003e → \u003ccode\u003e1\u003c/code\u003e, \u003ccode\u003efalse\u003c/code\u003e → \u003ccode\u003e0\u003c/code\u003e.\u003c/li\u003e \u003cli\u003e🟡 \u003cstrong\u003eNull:\u003c/strong\u003e Converts to \u003ccode\u003e0\u003c/code\u003e.\u003c/li\u003e \u003cli\u003e📦 \u003cstrong\u003eObjects and Arrays:\u003c/strong\u003e Processed but usually return \u003cem\u003eNaN\u003c/em\u003e, unless numeric.\u003c/li\u003e \u003c/ul\u003e\n\u003cbr\u003e\n\u003cp\u003e\n  \u003cstrong\u003eMade with passion by \u003cspan\u003eSh@rif 🔥\u003c/span\u003e\u003c/strong\u003e\n\u003c/p\u003e",
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      }
    ],
    "alwaysInSummary": true
  }
]


___SANDBOXED_JS_FOR_SERVER___

/******************************************
 * Variable: Converts Strings to Numbers
 * Author: Sharif Ujjaman
 * Date: 23 December 2024
 * Description: This variable converts 
 * strings to a numeric type.
 ******************************************/

const getType = require('getType');
const JSON = require('JSON');

const entity = data.entity;
const entityType = getType(entity);
let entityNumber;

if (entityType === 'function') {
  return;
}

if (entityType === 'object' || entityType === 'array') {
  const entityStringified = JSON.stringify(entity);
  entityNumber = entityStringified * 1; // Attempt number conversion
} else {
  entityNumber = entity * 1; // Multiply by 1 to convert to a number
}

// Check if the result is valid
if (entityNumber !== entityNumber) { // NaN check
  return null;
}

return entityNumber;


___TESTS___

scenarios: []


___NOTES___

Created on 3/28/2024, 6:30:28 PM



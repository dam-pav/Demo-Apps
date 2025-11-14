function SetAttributeValue(fieldControlName, parentOffset, attributeName, attributeValue) {
    const selector = `div[controlname^='${fieldControlName}']`;
    let div = window.parent.document.querySelector(selector);

    // Traverse up parentOffset times
    for (let i = 0; i < parentOffset && div; i++) {
        div = div.parentElement;
    }

    if (div) {
        if (typeof attributeValue === 'undefined' || attributeValue === null) {
            div.removeAttribute(attributeName); 
        } else {
            div.setAttribute(attributeName, attributeValue);
        }
        // remove max-height from children
        const children = div.querySelectorAll('*');
        children.forEach(child => {
            child.style.maxHeight = 'none';
        });

        console.log(`Element (parentOffset=${parentOffset}) with controlname ${fieldControlName} had attribute ${attributeName} set to ${attributeValue}`);
    } else {
        console.warn(`Element (parentOffset=${parentOffset}) with controlname ${fieldControlName} not found.`);
    }
}

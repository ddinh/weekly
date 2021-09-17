function longestNonrepeatingSubstring(str) {
    let output = "";
    for (let start = 0; start < str.length; start++) {
        const visited = new Set()
        let end = start;
        for (end; end < str.length; end++) {
            const currChar = str.charAt(end);
            if (visited.has(currChar)) {
                break;
            } else {
                visited.add(currChar);
            }
        }
        if (output.length < end - start + 1) {
            output = str.substring(start, end);
        }
    }
    return output;
}

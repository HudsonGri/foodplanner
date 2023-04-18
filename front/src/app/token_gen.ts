import * as crypto from 'crypto-js';



const gen_token = function (user_id: string) {
    let input = "m4Fx231DZXbga1DlANknjJLoIkRUY3VM" + user_id
    const hash = crypto.SHA256(input);
    return hash.toString();
}

export default gen_token;